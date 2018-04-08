FROM node:8.1-alpine

COPY . /app
WORKDIR /app

RUN chmod +x dep.sh && \
    ./dep.sh

CMD ["serve", "-s", "build"]
