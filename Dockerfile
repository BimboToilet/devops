FROM gcc:latest as build
COPY . .
RUN g++ main.cpp -o sample.exe

FROM alpine:latest
COPY --from=build sample .
RUN chmod +x sample
RUN ls -la
CMD ["./sample.exe","100"]
