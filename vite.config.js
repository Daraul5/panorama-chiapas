import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  // Configurado para GitHub Pages: https://daraul5.github.io/panorama-chiapas/
  base: '/panorama-chiapas/',
})
