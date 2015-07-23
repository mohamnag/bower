FROM node:latest

MAINTAINER Mohammad Naghavi <mohamnag@gmail.com>

RUN npm install -g bower

ADD .bowerrc /.bowerrc
ADD npmrc /user/local/etc/npmrc

CMD ["bower"]
