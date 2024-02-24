#!/bin/sh
#
# tuneables
# * amount of packets to process: -a packets:200
# * more compact output: -Tfields -e_ws.col.Time -e_ws.col.info
# * no-coloring: remove "bat"

tshark -n -a packets:200 -t ad \
    -Ttabs \
    -r "$@" | bat --style=plain --color=always --language=tsv
