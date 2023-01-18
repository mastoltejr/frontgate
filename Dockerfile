FROM node:19-alpine
WORKDIR /usr/src/app/my-app
COPY package*.json ./
RUN npm install
EXPOSE 3000
CMD ["npm", "run", "dev"]

# docker buildx build --load -f Dockerfile --platform=linux/amd64 . -t frontgate:latest