FROM node
WORKDIR /usr/src/app
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "index.js" ]