require "mkmf"

abort "missing libfap" unless find_header "fap.h"
             

create_makefile("aprs_parser/aprs_parser")