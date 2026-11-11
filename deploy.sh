#!/usr/bin/env sh

# Script de despliegue para GitHub Pages
# Uso: bash deploy.sh

set -e

echo "🍞 Construyendo Pan'orama Chiapas..."
npm run build

echo "📦 Preparando despliegue..."
cd dist

git init
git checkout -b main
git add -A
git commit -m "deploy: Pan'orama Chiapas 🌿"

# Cambia <USERNAME> y <REPO> por tus datos reales de GitHub
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages

echo ""
echo "✅ Build completado en ./dist"
echo ""
echo "Para desplegar en GitHub Pages, descomenta la línea 'git push' de arriba"
echo "o ejecuta: npm run deploy (usa gh-pages)"
echo ""

cd -
