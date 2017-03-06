#!/usr/bin/env bash
tshark -T dns -w '$browser-%Y-%m-%d_%H:%M:%S.pcap'
pid=$(ps -e | pgrep tshark)
echo $browser
kill -2 $pid
