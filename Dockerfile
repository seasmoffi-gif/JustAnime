# Node tabanlı imaj
FROM node:18-alpine

# Çalışma klasörü
WORKDIR /app

# package.json ve lock dosyalarını kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Proje dosyalarını kopyala
COPY . .

# Vite default olarak 5173 portunu kullanıyor
EXPOSE 5173

# Dev server başlat
CMD ["npm", "run", "dev", "--", "--host"]
