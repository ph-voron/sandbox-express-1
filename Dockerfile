FROM node:6.11.4

RUN mkdir -p /sandbox-express-1
WORKDIR /sandbox-express-1

COPY package.json /sandbox-express-1
RUN npm install

COPY . /sandbox-express-1

EXPOSE 3000
CMD [ "npm", "start" ]
