FROM gcc:latest as build
COPY . .
RUN g++ -o sample main.cpp
CMD ./sample
