FROM ubuntu:latest
RUN apt-get update && apt-get install -y sudo \
					curl \
					vim \
					apt-utils \ 
					build-essential \
					wget \
					libreadline-gplv2-dev \
					libncursesw5-dev \
					libssl-dev \ 
					libsqlite3-dev \
					tk-dev \
					libgdbm-dev \
					libc6-dev \
					libbz2-dev
RUN cd /usr/src && \
		wget https://www.python.org/ftp/python/2.7.12/Python-2.7.12.tgz && \
		tar xzf Python-2.7.12.tgz && cd Python-2.7.12 && ./configure && make altinstall \
		&& apt-get install -y  python-numpy python-scipy python-matplotlib ipython ipython-notebook \
		python-pandas python-sympy python-nose && \
	 	rm /usr/src/Python-2.7.12.tgz
RUN apt-get install -y python-dev \
			python-setuptools \
			libatlas-dev \
			python-pip \
			&& pip install -U scikit-learn
RUN cd /usr/src && pip install --upgrade pip && pip install jupyter
RUN apt-get clean && apt-get autoclean
## Better Alternative to Mount Volume
## COPY /TalkingData /home/Documents/Kaggle/TalkingData
