#! /bin/bash

docker run -v ~/PythonDocker/TalkingData:/home/TalkingData -v ~/PythonDocker/Notebooks:/home/Notebooks -it -p 8888:8888 --name kaggle01 ahuds001/python:0.2 /bin/bash -c "jupyter notebook --debug --notebook-dir=/home/Notebooks --ip='*' --port=8888 --no-browser"
