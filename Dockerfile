FROM oven/bun:1

WORKDIR /app

COPY package.json bun.lockb* ./

RUN bun install --no-cache

COPY . .

EXPOSE 5173

CMD ["bun", "run", "dev", "--host"]
