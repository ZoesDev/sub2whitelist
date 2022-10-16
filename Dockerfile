FROM node:17

# Create app directory
WORKDIR /usr/src/app

# Install app and dependencies
COPY / .

RUN npm install


EXPOSE 8000
CMD [ "npm", "start" ]