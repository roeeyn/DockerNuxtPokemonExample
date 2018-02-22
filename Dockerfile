FROM node

RUN mkdir -p /app

COPY . /app

RUN rm -rf ./node_modules

ENV HOST 0.0.0.0

WORKDIR /app

EXPOSE 3000

RUN npm install

CMD [ "npm", "start" ]