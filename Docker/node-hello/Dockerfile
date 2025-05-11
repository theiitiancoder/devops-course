FROM node

WORKDIR /node-hello

COPY package.json package-lock.json /node-hello/

RUN npm install

COPY . /node-hello/.

CMD ["npm", "start"]
