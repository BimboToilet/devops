FROM gcc:latest as build
COPY . .
RUN g++ -o sample main.cpp

FROM ubuntu:latest
COPY --from=build sample .
RUN ls -la
