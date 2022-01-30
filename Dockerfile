FROM nvidia/cuda:11.2.0-devel-ubuntu20.04
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
    libxext-dev\
    xinit\
    nvidia-settings
COPY boost_1_66_0.7z /root/.hunter/_Base/Download/Boost/1.66.0/075d0b4/
RUN git clone https://github.com/ethereum-mining/ethminer .\
    &&git submodule init\
    &&git submodule update\
    &&mkdir build; cd build\
    &&cmake .. -DETHASHCUDA=ON -DETHASHCL=OFF\
    &&make install