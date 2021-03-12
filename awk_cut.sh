#! /bin/bash

# awk
# `BEGIN {
#     print "Starting AWK"
# }
# /sudo du -hs /* | less/ {
#     du -hs /*
# }
# END {
#     top -o %MEM
# }
# `


awk 'NR>3{exit} {print $0}' $1
