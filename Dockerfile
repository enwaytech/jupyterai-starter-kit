FROM ubuntu:24.04

# Install the pip dependencies
RUN apt update && apt install -y python3-pip
RUN pip install jupyterlab~=4.0 jupyter-ai~=2.0 langchain-mistralai~=0.1.0 rosbags --break-system-packages

# install ROS
RUN apt install -y software-properties-common && add-apt-repository universe
RUN apt update && apt install -y curl
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null
RUN apt update && apt install -y ros-jazzy-desktop

# Expose the port for Jupyter Notebook
EXPOSE 8888

COPY start_jupyterlab.bash /home/start_jupyterlab.bash

RUN mkdir /app
WORKDIR /app

# Launch Jupyter Notebook when the container starts
CMD ["/bin/bash", "/home/start_jupyterlab.bash"]
