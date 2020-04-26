FROM ubuntu
RUN apt-get update && \
    apt-get install -y python-pip && \
    pip install flask
Workdir app
copy app.py .
EXPOSE 5000
ENTRYPOINT ["python","app.py"]
