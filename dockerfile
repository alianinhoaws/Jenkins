FROM node:latest
COPY  . /var/www
WORKDIR /var/www


RUN npm install

RUN cd client && npm install && cd ..

ENTRYPOINT [ "npm", "run", "dev" ]
