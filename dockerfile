FROM node:latest
WORKDIR /home/app
COPY /var/lib/jenkins/workspace/1/ /home/app
RUN npm install
EXPOSE 8080
CMD [ "node", "server.js" ]
