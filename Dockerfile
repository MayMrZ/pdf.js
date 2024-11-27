# FROM node:18

# WORKDIR /app
# COPY package*.json ./

# RUN npm install --global gulp-cli

# RUN npm install

# COPY ./ ./

# RUN gulp

# CMD ["gulp", "server"]

# EXPOSE 8888

FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --global gulp-cli

RUN npm install

COPY ./ ./

RUN gulp

EXPOSE 8888

CMD ["gulp", "server"]