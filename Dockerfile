# syntax=docker/dockerfile:1

# FROM crystallang/crystal
FROM archlinux
RUN mkdir /opt/hw/
COPY . /opt/hw/
run sudo pacman -S crystal shards
RUN crystal build /opt/hw/helloworld2.cr -o /opt/hw/helloworld
CMD ["/opt/hw/helloworld"]


