FROM ubuntu:disco

RUN apt-get update
RUN apt-get install dialog apt-utils -y
RUN apt-get install -y gcc
RUN apt-get install -y g++
RUN apt-get install -y build-essential libtcmalloc-minimal4 && ln -s /usr/lib/libtcmalloc_minimal.so.4 /usr/lib/libtcmalloc_minimal.so
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y wget
RUN wget -qO- "https://cmake.org/files/v3.15/cmake-3.15.4-Linux-x86_64.tar.gz" | tar --strip-components=1 -xz -C /usr/local
RUN apt-get install -y git
RUN apt-get install -y tree
RUN apt-get install -y mysql-server mysql-client
RUN apt-get install -y libmysqlclient-dev libmysql++-dev libmysqlcppconn-dev


ENV APP_DIRECTORY /app/

WORKDIR ${APP_DIRECTORY}
COPY ./ ${APP_DIRECTORY}


WORKDIR ${APP_DIRECTORY}
RUN ${APP_DIRECTORY}/crow/compile.sh

EXPOSE 8080/tcp
WORKDIR ${APP_DIRECTORY}
ENTRYPOINT ["./crow/build/src/example"]
