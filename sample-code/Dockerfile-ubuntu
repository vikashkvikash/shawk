FROM     ubuntu:latest
RUN      apt-get update
RUN      apt-get install -y gcc libffi-dev libssl-dev
RUN      apt-get install -y libxml2-dev xmlsec1
RUN      apt-get install -y python3-pip python3-dev
RUN      pip3 --no-cache-dir install --upgrade pip
RUN      rm -rf /var/lib/apt/lists/*
RUN      mkdir  /app
WORKDIR  /app
RUN 	pip install flask
RUN 	pip freeze > requirements.txt
RUN 	pip install -r requirements.txt

COPY     .  /app
RUN      pip3 install -r requirements.txt
EXPOSE   5000        
CMD     ["/usr/bin/python3", "/app/web.py"]
