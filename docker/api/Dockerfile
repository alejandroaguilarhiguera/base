FROM node:18.19
LABEL maintainer="Alejandro Aguilar <emonics.aguilar@gmail.com>"
RUN apt-get update -y && apt-get install imagemagick ghostscript poppler-utils -y
WORKDIR /usr/app/api
COPY ./projects/api ./
RUN yarn && yarn build

EXPOSE 3000

CMD ["yarn","start"]
