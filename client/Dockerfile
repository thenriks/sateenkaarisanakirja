FROM node:10-alpine

# Create app directory
WORKDIR /app


# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# Install dependencies
COPY package.json ./
RUN npm install
RUN npm install react-scripts@3.4.4 -g

# Bundle app source
COPY . ./

# Exports
EXPOSE 3000
CMD [ "npm", "start" ]
