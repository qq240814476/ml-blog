FROM keymetrics/pm2:latest-alpine
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN npm config set registry https://registry.npm.taobao.org/ && \
    npm i
#pm2在docker中使用命令为pm2-docker
CMD ["pm2-runtime", "start", "process.yml"]