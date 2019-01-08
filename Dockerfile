FROM node:10.13.0

RUN mkdir -p src/location

WORKDIR /src/location

COPY package*json /src/location/

RUN npm install

COPY . /src/location/

EXPOSE 3000

CMD ["npm", "start"] 