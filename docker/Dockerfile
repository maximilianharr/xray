FROM python:3
ARG http_proxy
ENV http_proxy=${http_proxy}

# Update
RUN apt-get update
RUN apt install -y libgl1-mesa-glx

# Install python packages
COPY requirements.txt /tmp/requirements.txt
WORKDIR /tmp
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

#RUN pip install -r requirements.txt
CMD chmod +x /media/docker/workspace/xraybones/docker/init.sh
ENTRYPOINT ["/media/docker/workspace/xraybones/docker/init.sh"]