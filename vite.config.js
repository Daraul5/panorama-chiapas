import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  // Para GitHub Pages: cambia 'panorama-chiapas' por el nombre real de tu repositorio
  base: './',
})
