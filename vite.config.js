import path from "path"
import react from "@vitejs/plugin-react"
import { defineConfig } from "vite"

export default defineConfig({
  plugins: [react()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./"),
    },
  },
  server: {
    host: true, // dış erişime izin
    allowedHosts: [
      "vulnton.org", // izin verilen host
    ],
    port: 5173, // sabit port
  },
})
