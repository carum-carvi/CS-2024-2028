# użyj Node.js
FROM node:18

# katalog roboczy
WORKDIR /app

# kopiuj package.json
COPY package*.json ./

# instaluj zależności
RUN npm install

# kopiuj resztę plików
COPY . .

# port aplikacji
EXPOSE 8080

# uruchom aplikację
CMD ["node", "server.js"]