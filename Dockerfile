FROM gcc:latest as build
COPY . .
RUN g++ -o sample main.cpp
RUN chmod +x sample

FROM ubuntu:latest
COPY --from=build . sample
CMD ./sample
