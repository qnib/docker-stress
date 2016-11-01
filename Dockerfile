FROM qnib/fd20

RUN yum -y install stress bc
ADD opt/qnib/stress/bin/start.sh /opt/qnib/stress/bin/
ENTRYPOINT ["/opt/qnib/stress/bin/start.sh"]
CMD ["-t", "60", "-c", "4"]
