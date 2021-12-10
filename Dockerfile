# syntax=docker/dockerfile:1

FROM crystallang/crystal
RUN mkdir /opt/hw/
COPY . /opt/hw/
RUN crystal build /opt/hw/helloworld.cr -o /opt/hw/helloworld
CMD ["/opt/hw/helloworld"]


