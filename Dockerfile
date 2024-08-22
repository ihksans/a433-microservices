# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app

# Menyalin file package.json dan package-lock.json
COPY package*.json ./

# Menginstal dependencies untuk production
RUN npm install --production --unsafe-perm

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menjalankan build
RUN npm run build

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Saat container diluncurkan, jalankan server dengan perintah npm start.
CMD [ "npm", "start" ]

# Ekspos bahwa port yang digunakan oleh aplikasi adalah 8080.
EXPOSE 8080
