FROM ubuntu:focal

LABEL author="changh95" editor="ProtossDragoon"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt upgrade -y
RUN apt install ssh -y && \
apt install git -y && \
apt install sudo -y && \
apt install wget -y && \
apt install software-properties-common -y

# C++ develpoment...
RUN apt update -y --fix-missing
RUN apt install build-essential -y && \
apt install -y gcc && \
apt install -y g++ && \
apt install -y cmake && \
apt install -y gdb && \
apt install -y clang

# Python3 development ...
RUN apt update -y --fix-missing
RUN apt install python3 -y && \
apt install python3-pip -y
RUN pip3 install pyyaml
RUN pip3 install gitpython

# X11 ...
RUN apt update -y --fix-missing
RUN apt install -y libgl1-mesa-glx && \
apt install -y libglu1-mesa-dev && \
apt install -y mesa-utils && \
apt install -y mesa-common-dev && \
apt install -y x11-utils && \
apt install -y x11-apps && \
apt clean

RUN apt autoclean

RUN mkdir slam && cd slam && \
    git clone https://github.com/changh95/programmers_slam_project_template.git &&\
    cd programmers_slam_project_template && ./buildDeps.py --d --system
