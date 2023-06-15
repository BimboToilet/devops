FROM gcc:9.5.0 as build
COPY . .
RUN g++ -o sample main.cpp

FROM ubuntu:latest
RUN mkdir result
COPY --from=build sample /result
WORKDIR /result
CMD ./sample
