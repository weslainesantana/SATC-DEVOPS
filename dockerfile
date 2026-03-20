from node:20-alpine
workdir /app
COPY package*.json ./
RUN npm install
run npm run build
Expose 4173
CMD ["npm", "run", "preview"]
