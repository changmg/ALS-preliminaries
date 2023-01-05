#########################################
# Determine the # cores on your machine 
#########################################

uname -a				;# Linux or Solaris?

grep processor /proc/cpuinfo 		;# Linux 

# If using SunOS/Solaris, comment out the above command and uncomment the following:
#exec /usr/sbin/psrinfo			;# SunOS / Solaris
