# Bun resmi imajı
FROM oven/bun:1

WORKDIR /app

# package.json ve lock dosyalarını kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN bun install

# Proje dosyalarını kopyala
COPY . .

EXPOSE 5173

# Vite dev server başlat
CMD ["bun", "run", "dev", "--host"]
