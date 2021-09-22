# Dockerfile

# base image
FROM node:alpine

# create & set working directory
RUN mkdir -p /usr/src
WORKDIR /usr/src

# copy source files
COPY . /usr/src

# install dependencies
RUN npm install

# start app
RUN npm run build
EXPOSE 3000
RUN echo "hello"
RUN echo $DATABASE_URL
ARG DATABASE_URL
ENV DATABASE_URL=${DATABASE_URL}
RUN echo $DATABASE_URL
CMD echo "$DATABASE_URL"
