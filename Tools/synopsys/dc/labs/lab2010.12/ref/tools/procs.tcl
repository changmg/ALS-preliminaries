# Synopsys Customer Education Services
# IC Compiler Workshop series
#
# Tcl procedures to simplify life...

puts "\#\#\# Processing procs.tcl..."

create_command_group CES_procs

# Get command results/reports in separate graphical tk window
# This expects view.tk to be in the path, which is the other half
# of this procedure!
# Examples: view man compile,  view report_timing -max_paths 20
#======================================================  
proc view {args} {
	if {$args == ""} { puts "view: Please provide a command."; return }
	set tmpfile tmpfile[pid][expr int(rand()*10000)]
	redirect $tmpfile {uplevel $args}
	# Without redirect, exec echos the PID of the new process to the screen
	redirect /dev/null {exec ../ref/tools/view.tk $tmpfile "$args" &}
}
define_proc_attributes view \
	-info "Display output of any command in a separate Tk window." \
	-command_group CES_procs \
	-define_args {
		{args "Command with arguments" args}
	}


proc report_placement_blockages {} {
	foreach_in_collection item [get_placement_blockages -quiet] {
		puts "Name:   [get_attribute $item name]"
		puts "  Type: [get_attribute $item type]"
		puts "  bbox: [get_attribute $item bbox]\n"
	}
}
define_proc_attributes report_placement_blockages \
	-info "Display a summary of all placement blockages in the design" \
	-command_group CES_procs

proc report_route_guides {} {
	suppress_message ATTR-3
	foreach_in_collection item [get_route_guides -quiet] {
		puts "Name:   [get_attribute $item name]"
		puts "  switch_preferred_direction: [get_attribute $item switch_preferred_direction]"
		puts "  no_preroute_layers:         [get_attribute $item no_preroute_layers]"
		puts "  no_signal_layers:           [get_attribute $item no_signal_layers]"
		puts "  bbox:                       [get_attribute $item bbox]"
	}
	unsuppress_message ATTR-3
}
define_proc_attributes report_route_guides \
	-info "Display a summary of all route guides in the design" \
	-command_group CES_procs


proc async_domain {args} {
	parse_proc_arguments -args $args procargs
	set clk1 $procargs(clock1)
	set clk2 $procargs(clock2)
    set_false_path -from [get_clocks $clk1] -to [get_clocks $clk2]
    set_false_path -from [get_clocks $clk2] -to [get_clocks $clk1]
}
define_proc_attributes async_domain \
	-info "set false paths between 2 clocks in both directions" \
	-command_group CES_procs \
	-define_args {
		{clock1 "First clock name" clock1}
		{clock2 "Second clock name" clock2}
	}

# Generates statistics on the current session:
#   hostname
#   uname -a
#   date
#   location of current exec
proc host_stats {} {
	uplevel {
	puts "##### Session information:"
	puts "hostname:  [exec hostname]"
	puts "uname -a:  [exec uname -a]"
	puts "date:      [date]"
	puts "bin path:  $bin_path"
	puts "##### End session information\n"
	}
}
define_proc_attributes host_stats \
	-info "Display statistics of the current host (server)" \
	-command_group CES_procs


# Generates timing, constraint and qor reports in the "reports/" directory
# under the current dir.
proc gen_reports {args} {

	# Defaults:
	set procargs(-verbose) false
	set procargs(-dir) "./reports"

	parse_proc_arguments -args $args procargs
	set verbose $procargs(-verbose)
	set prefix $procargs(-prefix)
	set dir $procargs(-dir)

	file mkdir $dir
	update_timing
	if ($verbose) { puts "##### Writing $dir/$prefix.constraint" }
	redirect $dir/$prefix.constraint {report_constraint -nosplit -all} 
	if ($verbose) { puts "##### Writing $dir/$prefix.timing" }
	redirect $dir/$prefix.timing {report_timing -nosplit}
	if ($verbose) { puts "##### Writing $dir/$prefix.min.timing" }
	redirect $dir/$prefix.min.timing {report_timing -delay min -nosplit}
	if ($verbose) { puts "##### Writing $dir/$prefix.qor" }
	redirect $dir/$prefix.qor {report_qor}
}

define_proc_attributes gen_reports \
	-info "Generates min/max timing, constraint and qor reports" \
	-command_group CES_procs \
	-define_args {
		{-prefix "Prefix for report files" "<name>" string required}
		{-verbose "Be verbose!" "" boolean optional}
		{-dir "Destination directory. Default: ./reports" "dest_dir" string optional}
	}


proc reset_timer {timer_name} {
    global $timer_name
    redirect /dev/null {set $timer_name [clock seconds]}
}
define_proc_attributes reset_timer \
	-info "Resets a named timer" \
	-command_group CES_procs \
	-define_args {
		{timer_name "Name of timer" timer_name}
	}

proc report_timer {timer_name message} {
    upvar $timer_name time

    set mins [expr ([clock seconds] - $time) / 60]
    set secs [expr ([clock seconds] - $time) % 60]
    echo [format "####----#### Runtime: %3d:%02d minutes for \"$message\"" $mins $secs]
}
define_proc_attributes report_timer \
	-info "report the elapsed time of a named timer" \
	-command_group CES_procs \
	-define_args {
		{timer_name "Name of timer" timer_name}
		{message "message to display with the value of the timer" message}
	}


proc measure_time {args} {
    set time [clock seconds]
	set command [join $args]
    echo "##### Started timer for command \"$command\""
    uplevel $args
    set mins [expr ([clock seconds] - $time) / 60]
    set secs [expr ([clock seconds] - $time) % 60]
    echo [format "####----#### Runtime: %3d:%02d minutes for command \"$command\"" $mins $secs]
}
define_proc_attributes measure_time \
	-info "Run a command while measuring the time it takes" \
	-command_group CES_procs \
	-define_args {
		{script "Tcl-commands to time (and run)" args}
	}

proc gui {} {
	uplevel {
		if {$in_gui_session == false} {
			gui_start
		} else {
			gui_stop
			echo "... or just 'gui'"
		}
	}
}
define_proc_attributes gui \
	-info "Start or stop the GUI" \
	-command_group CES_procs

proc vman {cmd} {
	if {$::in_gui_session == false} {
		view man $cmd
	} else {
		gui_show_man_page $cmd
	}
}
define_proc_attributes vman \
	-info "Display a man page using the GUI man reader or Tcl/TK." \
	-dont_abbrev \
	-command_group CES_procs \
	-define_args {
		{cmd "command-name" cmd}
	}



#
# Always Ask
# This useful procedure is on solvnet, Doc Id  012959
#
proc aa {args} {

   parse_proc_arguments -args $args results

   echo "*********  Commands **********"
   help *$results(pattern)*

   echo "********* Variables **********"
   uplevel "printvar *$results(pattern)*"

   if {[info exists results(-verbose)]} {
      echo "********* -help *************"
      apropos *$results(pattern)*
   }
}; # end proc

define_proc_attributes aa -info "always ask - Searches Synopsys help for both commands and variables" \
	-command_group CES_procs \
	-define_args {
		{pattern "Pattern to search for" pattern string required}
		{-verbose "Search -help as well" "" boolean optional}
	}

# Idea for a quick power ring proc...

proc ring_it {args} {
	# Defaults:
	set procargs(-cells) ""
	set procargs(-nets) "VDD VSS"
	set procargs(-location) "5"
	set procargs(-horiz_layer) "METAL3"
	set procargs(-vert_layer) "METAL2"
	set procargs(-width) "4"
	set procargs(-full) "false"

	parse_proc_arguments -args $args procargs
	set cells $procargs(-cells)
	set nets  $procargs(-nets)
	set location $procargs(-location)
	set horiz_layer $procargs(-horiz_layer)
	set vert_layer $procargs(-vert_layer)
	set width $procargs(-width)
	set full $procargs(-full)


	if {$cells == ""} {
		puts "ERROR:  no cells specified!"
		return
	}

#-location {1 2 3 4 5 6 7 8 9} matrix 1= bottom left, 2 bottom middle, ..., 9 is top right.
#create connections to core ring based on location - we assume that if any number but 5 (default) is given,
#we will create connections to the ring around the core! (-extend_xy)


	switch $location {
		1 { set extend "-extend_tl -extend_rl"; set skip "-skip_left_side -skip_bottom_side" }
		2 { set extend "-extend_ll -extend_rl"; set skip "-skip_bottom_side" }
		3 { set extend "-extend_th -extend_ll"; set skip "-skip_right_side -skip_bottom_side" }
		4 { set extend "-extend_tl -extend_bl"; set skip "-skip_left_side" }
		5 { set extend ""; set skip "" }
		6 { set extend "-extend_bh -extend_th"; set skip "-skip_right_side" }
		7 { set extend "-extend_rh -extend_bl"; set skip "-skip_top_side -skip_left_side" }
		8 { set extend "-extend_lh -extend_rh"; set skip "-skip_top_side" }
		9 { set extend "-extend_lh -extend_bh"; set skip "-skip_top_side -skip_right_side" }
		default { set extend ""; set skip "" }
	}

	if {$full} {
		set skip "";
		switch $location {
			1 { set extend "$extend -extend_bl -extend_ll" }
			2 {  }
			3 { set extend "$extend -extend_rl -extend_bh" }
			4 {  }
			5 {  }
			6 {  }
			7 { set extend "$extend -extend_tl -extend_lh" }
			8 {  }
			9 { set extend "$extend -extend_rh -extend_th" }
			default {  }
		}
	}

	puts "Using $horiz_layer for horizontal ring sections."
	puts "Using $vert_layer for vertical ring sections."
	puts "Routing power nets $nets."
	puts "Ring width: $width"

	eval create_rectangular_rings -nets {$nets} -around specified_as_group -cells $cells $extend -left_segment_layer $vert_layer -right_segment_layer $vert_layer -top_segment_layer $horiz_layer -bottom_segment_layer $horiz_layer $skip -left_segment_width $width -right_segment_width $width -bottom_segment_width $width -top_segment_width $width

}


define_proc_attributes ring_it \
	-info "Creates a simple power ring around macros" \
	-command_group CES_procs \
	-define_args {
		{-cells "Macro cells to create ring around" "<cells>" string required}
		{-nets "names of power/ground nets. Default: VDD VSS" "<pgnets>" string optional}
		{-location "location of macro, 1-9. 1 is lower left, 9 upper right corner. Default: 5" "<1-9>" string optional}
		{-horiz_layer "Layer to use for horizontal ring sections. Default: METAL3" "string" string optional}
		{-vert_layer "Layer to use for vertical ring sections. Default: METAL2" "string" string optional}
		{-width "Width of ring. Default: 4" "integer" string optional}
		{-full "Create a complete ring (we assume we'll re-use the core ring otherwise)" "" boolean optional}
	}




# Display all customer procedures:
echo "The following procedures are defined for use in this workshop."
echo "They are NOT standard IC Compiler commands."
help CES_procs
