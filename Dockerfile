FROM python:3-alpine
RUN apk update
RUN apk add --no-cache --virtual .pynacl_deps build-base python3-dev libffi-dev curl nano wget
WORKDIR app
COPY app.py .
EXPOSE 5000
ENTRYPOINT ["python3","app.py"]
