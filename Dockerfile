FROM gcc:latest as build
COPY . .
RUN mkdir result && g++ -o ./result/sample main.cpp

FROM alpine:latest
COPY --from=build ./result .
RUN ls -la
