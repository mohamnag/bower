FROM node:4

MAINTAINER Mohammad Naghavi <mohamnag@gmail.com>

RUN \
  apt-get update && \
  apt-get install -y ruby && \
  gem install sass && \
  npm install -g bower@1.7.9

ADD .bowerrc /.bowerrc
ADD npmrc /usr/local/etc/npmrc

CMD ["bower"]
