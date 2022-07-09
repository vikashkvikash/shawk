FROM python:3.8-alpine
RUN mkdir /app
ADD . /app
WORKDIR /app
RUN pip install flask
RUN pip freeze > requirements.txt
RUN pip install -r requirements.txt
CMD ["python", "web.py"]
