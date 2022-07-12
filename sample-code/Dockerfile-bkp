FROM python:latest
RUN touch index.html
RUN echo "Hello world!" > index.html
EXPOSE 8000
CMD python -m http.server 8000
