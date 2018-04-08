FROM node:8.1-alpine

COPY . /app
WORKDIR /app

RUN chmod +x test.sh && \
    ./test.sh

CMD ["serve", "-s", "build"]
