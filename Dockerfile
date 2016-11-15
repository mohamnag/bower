FROM node:4

MAINTAINER Mohammad Naghavi <mohamnag@gmail.com>

RUN apt-get update && \
  apt-get install -y locales ruby && \
  gem install sass && \
  npm install -g bower@1.8.0

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ADD .bowerrc /.bowerrc
ADD npmrc /usr/local/etc/npmrc

CMD ["bower"]
