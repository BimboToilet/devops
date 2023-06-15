FROM gcc:latest as build
COPY . .
RUN g++ main.cpp -o sample

FROM ubuntu:latest
COPY --from=build sample /usr/local/bin
RUN chmod +x sample
CMD ./sample
