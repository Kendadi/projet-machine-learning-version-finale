# Use the official image as a parent image.
FROM ubuntu:18.04
# FROM tensorflow/tensorflow:1.15.5-gpu-py3

# Copy the file from your host to your current location.
# COPY . /

# Set the working directory.
WORKDIR /
# WORKDIR /home/ubuntu/repos/algo/app

# setup dependencies
RUN apt-get update
RUN apt-get -y install xz-utils
RUN apt-get -y install curl








# Copy the rest of your app's source code from your host to your image filesystem.
#COPY / /
COPY ./ /app


CMD sh ./Dockerfile.sh
# CMD node ./api



# Add metadata to the image to describe which port the container is listening on at runtime.
EXPOSE 5555











# # For more information, please refer to https://aka.ms/vscode-docker-python
# FROM python:3.8-slim-buster

# # Keeps Python from generating .pyc files in the container
# ENV PYTHONDONTWRITEBYTECODE 1

# # Turns off buffering for easier container logging
# ENV PYTHONUNBUFFERED 1

# # Install pip requirements
# # ADD requirements.txt .
# # RUN python pip install ­­--upgrade pip
# # RUN python -m pip install -r requirements.txt

# WORKDIR /app
# # ADD . /app
# COPY ./ ./


# # Switching to a non-root user, please refer to https://aka.ms/vscode-docker-python-user-rights
# RUN useradd appuser && chown -R appuser /app
# USER appuser

# # During debugging, this entry point will be overridden. For more information, please refer to https://aka.ms/vscode-docker-python-debug
# CMD sh /app/Dockerfile.sh 
