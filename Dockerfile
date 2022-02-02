FROM golang:1.16
WORKDIR /

COPY main.go ./
COPY index.html ./static/

RUN go mod init main.go && go build -a -o go-app .

FROM ubuntu:latest  
RUN apt-get update && apt install ca-certificates -y
WORKDIR /root/
COPY index.html ./static/

COPY --from=0 ./go-app ./
CMD ["./go-app"] 