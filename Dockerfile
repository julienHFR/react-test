# Extending image
FROM arch:latest

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
COPY package-lock.json /usr/src/app/

RUN npm install

# Bundle app source
COPY . /usr/src/app

# Port to listener
EXPOSE 5000

# Environment variables
ENV NODE_ENV production
ENV PORT 5000
ENV PUBLIC_PATH "/"

RUN npm run build
RUN npm install -g serve

# Main command
CMD [ "serve", "-s", "build" ]

