FROM node:slim

WORKDIR /app
COPY package.json .
RUN apt-get update && apt-get install -y python2 build-essential libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev
RUN python2 -V
RUN npm install --only=prod
COPY . .

CMD ["npm", "start"]
