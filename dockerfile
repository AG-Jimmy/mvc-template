FROM node:20
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["sh", "-c", "if [ \"$NODE_MODE\" = 'development' ]; then npm run dev; else npm run start; fi"]
