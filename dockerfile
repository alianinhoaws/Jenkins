FROM node:latest
WORKDIR /var/www 
COPY /var/lib/jenkins/workspace/student /var/www

RUN npm install

RUN cd client && npm install && cd ..

ENTRYPOINT [ "npm", "run", "dev" ]
