FROM node:18.19
LABEL maintainer="Alejandro Aguilar <emonics.aguilar@gmail.com>"
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR /usr/app/webapp
COPY ./projects/webapp ./
RUN yarn && yarn build


EXPOSE 3000


CMD [ "node", "dist/main.js" ]
