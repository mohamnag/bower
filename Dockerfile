FROM node:4

MAINTAINER Mohammad Naghavi <mohamnag@gmail.com>

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN \
  apt-get update && \
  apt-get install -y ruby && \
  gem install sass && \
  npm install -g bower@1.7.9

ADD .bowerrc /.bowerrc
ADD npmrc /usr/local/etc/npmrc

CMD ["bower"]
