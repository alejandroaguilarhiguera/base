FROM node:18-alpine3.18
# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev git
ARG NODE_ENV=development
ENV NODE_ENV=${NODE_ENV}

WORKDIR /usr/
COPY ./projects/strapi/package.json ./projects/strapi/yarn.lock ./
RUN yarn global add node-gyp
RUN yarn config set network-timeout 600000 -g && yarn install
ENV PATH /usr/node_modules/.bin:$PATH

WORKDIR /usr/app
COPY ./projects/strapi .
RUN chown -R node:node /usr/app
USER node
RUN ls

# RUN ["yarn", "build"]
EXPOSE 1337
# CMD ["yarn", "develop"]