FROM gcc:latest as build
COPY . .
RUN g++ main.cpp -o sample

FROM alpine:latest
COPY --from=build sample .
CMD ./sample.exe
