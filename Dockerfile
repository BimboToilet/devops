FROM gcc:latest as build
COPY . .
RUN g++ -o sample main.cpp

FROM gcc:latest
RUN mkdir result
COPY --from=build sample /result
WORKDIR /result
CMD ./sample
