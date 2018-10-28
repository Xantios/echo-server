FROM node:8.12.0-alpine

WORKDIR /app

RUN npm install -g laravel-echo-server

# Get config 
COPY laravel-echo-server.json /app/laravel-echo-server.json

# Expose echo-server
EXPOSE 6001

# Run 
CMD ["laravel-echo-server","start"];