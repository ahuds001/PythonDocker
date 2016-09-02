#! /bin/bash

docker run -v ~/PythonDocker/TalkingData:/home/TalkingData -v ~/PythonDocker/Notebooks:/home/Notebooks -it -p 8888:8888 --name kaggle01 tony/python:0.2 /bin/bash -c "cd /home/ && jupyter notebook --ip='*' --port=8888 --no-browser"
