FROM golang:1.16.3-alpine3.12
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN go build -o main .
CMD ["/app/main"]



# run in terminal

# docker build -t my-go-app .
# docker images
# docker run -it -p 8080:8081 my-go-app
# docker run -d -p 8080:8081 my-go-app
# docker ps
# docker kill <id container>

# digital ocean
# ssh root@<ipv4>
# git clone .....
# cd app
# docker build -t my-go-app .
# docker run -d -p 8080:8081 my-go app
# docker ps