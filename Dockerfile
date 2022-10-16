FROM node:17

LABEL version="0.9"
LABEL Name="Sub2Whitelist"
LABEL description="Container to run sub2whitelist nodejs app"
# Create app directory
WORKDIR /usr/src/app

# Install app and dependencies
COPY / .

RUN npm install

EXPOSE 8000
CMD [ "npm", "start" ]