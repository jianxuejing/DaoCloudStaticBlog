FROM scratch
MAINTAINER jianxuejing <jianxue.jing@gmail.com>

ADD ./rootfs.tar / 
RUN mkdir -p /app
WORKDIR /app
COPY ./static /app/
COPY ./public /public
EXPOSE 8080

CMD ["/app/static"]
