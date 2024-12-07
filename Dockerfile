FROM node:20
 
WORKDIR /usr/src/app
 
COPY package*.json ./

COPY yarn.lock ./
 
RUN npm install -g -f yarn

RUN yarn install
 
COPY . .

RUN yarn build
 
EXPOSE 4173
 
CMD [ "yarn", "preview", "--host" ]