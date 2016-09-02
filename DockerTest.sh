#! /bin/bash

docker run -v ~/PythonDocker/TalkingData:/home/TalkingData -v ~/PythonDocker/Notebooks:/home/Notebooks -it -p 8888:8888 --name kaggle02 tony/python:0.2 /bin/bash
