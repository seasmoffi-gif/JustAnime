# 1. AŞAMA → Build
FROM node:18-alpine AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Vite build (dist klasörü oluşur)
RUN npm run build


# 2. AŞAMA → Serve
FROM node:18-alpine

WORKDIR /app

# Sadece build edilmiş dist dosyalarını al
COPY --from=builder /app/dist ./dist

# Basit bir static server kur (örnek: serve)
RUN npm install -g serve

EXPOSE 4173

# Prod server başlat
CMD ["serve", "-s", "dist", "-l", "4173"]
