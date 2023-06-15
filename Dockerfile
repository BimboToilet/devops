FROM gcc:latest as build
COPY . .
RUN g++ main.cpp -o sample

FROM ubuntu:latest
COPY --from=build sample .
RUN chmod +x sample
RUN ls -la
ENTRYPOINT ["/usr/bin/bash"]
CMD ["sample","100"]
