FROM ubuntu:focal

LABEL author="changh95"
ARG DEBIAN_FRONTEND=noninteractive

RUN apt update -y && apt upgrade -y

# Related to build...
RUN apt install build-essential -y && \
apt install cmake -y && \
apt install git -y && \
apt install sudo -y && \
apt install wget -y && \
apt install ninja-build -y && \
apt install software-properties-common -y && \
apt install python3 -y && \
apt install python3-pip -y

# Related to JetBrains CLion Docker develpoment...
RUN apt update -y
RUN apt install -y ssh && \
apt install -y gcc && \
apt install -y g++ && \
apt install -y gdb && \
apt install -y clang && \
apt install -y cmake && \
apt install -y rsync && \
apt install -y tar && \
apt install -y mesa-utils

# Related to X11 remote display
RUN apt update -y
RUN apt install -y libgl1-mesa-glx && \
apt install -y libglu1-mesa-dev && \
apt install -y mesa-common-dev && \
apt install -y x11-utils && \
apt install -y x11-apps && \
apt clean

RUN pip3 install pyyaml
RUN pip3 install gitpython

RUN apt autoclean

RUN mkdir slam && cd slam && \
    git clone https://github.com/changh95/programmers_slam_project_template.git &&\
    cd programmers_slam_project_template && ./buildDeps.py --d --system
