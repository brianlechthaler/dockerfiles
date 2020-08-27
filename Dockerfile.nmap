FROM alpine:latest
RUN apk add nmap
RUN mkdir /x
RUN cp $(which nmap) /x/nmap
ENTRYPOINT ["/x/nmap"]
