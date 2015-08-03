FROM qnib/fd20

RUN yum -y install stress

CMD ["stress", "-t", "60", "-c", "4"]
