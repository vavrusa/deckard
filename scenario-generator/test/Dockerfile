FROM debian

RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y tshark
RUN dpkg-reconfigure wireshark-common 
RUN usermod -a -G wireshark $USER
RUN gnome-session-quit --logout --no-prompt
