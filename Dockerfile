# base image
FROM node:alpine

# setting the work direcotry
WORKDIR /usr/src/app

# copy package.json
COPY ./package.json .

# install dependencies
RUN npm install

# COPY index.js
COPY ./index.js .

RUN node -v

# Run app
CMD ["node", "index.js"]
