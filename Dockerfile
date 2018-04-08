FROM node:8.1-alpine

COPY . /app
WORKDIR /app

RUN npm install --global yarn && npm install && npm run build && yarn global add serve

CMD ["serve", "-s", "build"]
