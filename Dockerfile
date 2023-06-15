FROM gcc:latest as build
COPY . .
RUN mkdir result && g++ -o ./result/sample main.cpp

FROM ubuntu:latest
COPY --from=build ./result .
ENTRYPOINT './sample'
CMD '100'
