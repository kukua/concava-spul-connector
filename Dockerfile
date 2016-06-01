FROM node:5.1
MAINTAINER Kukua Team <dev@kukua.cc>

WORKDIR /data
COPY ./ /data/
RUN npm install
RUN npm run compile
RUN npm prune --production

EXPOSE 3333
EXPOSE 5555

CMD npm start
