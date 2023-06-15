FROM gcc:latest as build
COPY . /usr/src/cpp_test
WORKDIR /usr/src/cpp_test
RUN g++ -o sample main.cpp
CMD ./sample
