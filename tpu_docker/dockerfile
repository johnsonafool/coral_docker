FROM ubuntu:18.04
ENV TZ=US/Central
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /home
ENV HOME /home
VOLUME /data
EXPOSE 8888
RUN cd ~
RUN apt-get update
RUN apt-get install -y git pkg-config wget usbutils curl apt-transport-https ca-certificates
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip

RUN echo "deb https://packages.cloud.google.com/apt coral-edgetpu-stable main" \
    | tee /etc/apt/sources.list.d/coral-edgetpu.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update
# RUN apt-get install -y python3-edgetpu python3-opencv
RUN apt-get install -y libedgetpu1-std python3-edgetpu python3-opencv

RUN wget https://dl.google.com/coral/python/tflite_runtime-2.1.0-cp36-cp36m-linux_x86_64.whl
RUN pip3 install tflite_runtime-2.1.0-cp36-cp36m-linux_x86_64.whl

RUN git clone https://github.com/google-coral/tflite.git