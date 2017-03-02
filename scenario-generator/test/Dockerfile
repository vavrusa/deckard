FROM debian

RUN apt-get update && apt-get install -y \
tshark
RUN mkdir /test
RUN cd /test
RUN mkdir /pcap
WORKDIR /test
RUN tshark -T dns -w '$browser-%Y-%m-%d_%H:%M:%S.pcap'
RUN pid=$(ps -e | pgrep tshark)
CMD echo $browser
RUN kill -2 $pid
