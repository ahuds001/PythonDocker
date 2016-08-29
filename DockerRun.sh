#! /bin/bash

docker run -v ~/Documents/Kaggle/TalkingData:/home/TalkingData -v ~/Documents/Notebooks:/home/Notebooks -it -p 8888:8888 --name kaggle01 ahuds001/python:0.2 /bin/bash -c "export PATH=/usr/src/Python-2.7.1:$PATH && jupyter notebook --debug --notebook-dir=/home/Notebooks --ip='*' --port=8888 --no-browser"
