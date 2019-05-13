FROM ubuntu
MAINTAINER marco "pqlu@alibaba-inc.com"
RUN apt-get -y update && apt-get install -y whois mtr-tiny fping dnsutils openssh-server iproute2 iputils-ping iputils-arping net-tools tcpdump curl telnet iputils-tracepath traceroute
RUN mkdir -p -m0755 /var/run/sshd
RUN mv /usr/sbin/tcpdump /usr/bin/tcpdump
ENTRYPOINT /usr/sbin/sshd -D
