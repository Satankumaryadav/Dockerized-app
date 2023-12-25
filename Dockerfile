FROM node:alpine    
WORKDIR /use/src/app
COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm install
COPY ./src ./src
COPY . .ENV ./
COPY ./config.js ./
CMD [ "npm","start" ]
