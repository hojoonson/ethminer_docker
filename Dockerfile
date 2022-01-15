FROM nvidia/cuda:11.6.0-runtime-ubuntu20.04
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
RUN mkdir /root/ethminer
WORKDIR /root/ethminer
RUN apt update\
    && apt install -y\
    tzdata\
    wget\
    git\
    cmake\
    g++\
    libx11-dev\
    libxext-dev
RUN git clone https://github.com/ethereum-mining/ethminer .\
    &&git submodule init\
    &&git submodule update\
    &&mkdir build; cd build\
    &&cmake .. -DETHASHCUDA=ON -DETHASHCL=OFF\
    &&cmake --build .\
    &&make install 
