FROM circleci/python:3.6.5
MAINTAINER helsonxiao

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list && sudo apt-get update && sudo apt-get install -y libgif-dev libmemcached-dev gettext nodejs yarn nginx && sudo apt-get clean
