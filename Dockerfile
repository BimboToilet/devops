FROM gcc:latest as build
COPY . .
RUN g++ main.cpp -o sample.exe

FROM alpine:latest
COPY --from=build sample.exe .
RUN chmod +x sample.exe
RUN ls -la
CMD ["./sample.exe","100"]
