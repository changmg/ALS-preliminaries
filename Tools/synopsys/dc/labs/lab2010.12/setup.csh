#
# SYNOPSYS Design Compiler 1 Workshop environement - model setup file
#

# The SYNOPSYS environment points to where the tool is installed
setenv SYNOPSYS  /tools/synopsys/syn/2010.12

# This variable needs to point to the license server
setenv SNPSLMD_LICENSE_FILE 27000@license_server

# Adjust exec path
set path = ($path $SYNOPSYS/bin )
