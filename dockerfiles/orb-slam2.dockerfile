ARG IMAGE
ARG TAG

FROM ${IMAGE}:${TAG}

WORKDIR /root

RUN git clone https://github.com/Windfisch/ORB_SLAM2.git && \
    cd ORB_SLAM2 && \
    chmod +x build.sh && \
    ./build.sh
