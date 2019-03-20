FROM arm32v7/node:slim
WORKDIR /app/user

COPY package.json .
RUN npm install --production

COPY . .
CMD node app.js
