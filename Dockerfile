FROM mhart/alpine-node

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install
COPY . /usr/src/app

RUN adduser -D myuser
USER myuser

ENV PORT 80
EXPOSE 80
CMD [ "npm", "start" ]
