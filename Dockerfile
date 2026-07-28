FROM ubuntu:latest

WORKDIR /app

COPY sys_info.sh .

RUN chmod +x sys_info.sh

ENTRYPOINT ["./sys_info.sh"]
CMD ["-a"]
