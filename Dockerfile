# Use latest Node.js
FROM node:14
# Set working directory
WORKDIR /app
# copy package.json AND package.lock.json
COPY package*.json ./
# install dependencies
RUN npm install
# Copy entire app to the working directory
COPY . .
# build app
RUN npm run build
# install serve
RUN npm install -g serve
# serve
CMD ["serve","-s","build"]
# expose that port it runs on
EXPOSE 3000