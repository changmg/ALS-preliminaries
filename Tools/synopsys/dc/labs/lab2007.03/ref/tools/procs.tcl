# Synopsys Customer Education Services
# Physical Compiler 1 Workshop
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
	view man $cmd
}
define_proc_attributes vman \
	-info "Display a man page using Tcl/TK." \
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



# Display all customer procedures:
echo "The following procedures are defined for use in this workshop."
echo "They are NOT standard DC commands."
help CES_procs
