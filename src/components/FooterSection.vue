<script setup>
// FooterSection — Logo, redes sociales (FB, IG) e información de origen
import logo from '../assets/logo.png'

const redes = [
  {
    nombre: 'Facebook',
    url: 'https://www.facebook.com/share/14w6wod1WjE/',
    path: 'M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z',
  },
  {
    nombre: 'Instagram',
    url: 'https://www.instagram.com/panorama.chiapas?utm_source=qr&psln=MTIwZzB2YTI1ZHNscQ==',
    paths: [
      'M3 7a4 4 0 0 1 4-4h10a4 4 0 0 1 4 4v10a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4V7z',
      'M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z',
    ],
    circle: { cx: 17.5, cy: 6.5, r: 1.5 },
  },
]

const ubicacion = {
  texto: 'Tuxtla Gutiérrez, Chiapas, México',
  paths: [
    'M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z',
  ],
  circle: { cx: 12, cy: 10, r: 3 },
}

const enlaces = [
  { nombre: 'Inicio', url: '#' },
  { nombre: 'Nosotros', url: '#nosotros' },
  { nombre: 'Catálogo', url: '#catalogo' },
  { nombre: 'Colecciones', url: '#colecciones' },
  { nombre: 'Empaque', url: '#empaque' },
]
</script>

<template>
  <footer class="footer">
    <div class="container">
      <div class="footer__grid">
        <!-- Columna 1: Logo + Descripción -->
        <div class="footer__brand">
          <img :src="logo" alt="Logo Pan'orama Chiapas" class="footer__logo-img" />
          <h3 class="footer__brand-name">Pan'orama Chiapas</h3>
          <p class="footer__brand-desc">
            Sabores y Tradición en Cada Bocado. Un proyecto que conecta 12
            regiones a través del pan artesanal chiapaneco.
          </p>
        </div>

        <!-- Columna 2: Enlaces rápidos -->
        <div class="footer__links">
          <h4 class="footer__heading">Navegación</h4>
          <ul class="footer__link-list">
            <li v-for="enlace in enlaces" :key="enlace.nombre">
              <a :href="enlace.url" class="footer__link">{{ enlace.nombre }}</a>
            </li>
          </ul>
        </div>

        <!-- Columna 3: Somos de -->
        <div class="footer__location">
          <h4 class="footer__heading">Somos de</h4>
          <div class="footer__location-item">
            <svg class="footer__location-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
              <path v-for="(d, j) in ubicacion.paths" :key="j" :d="d"/>
              <circle :cx="ubicacion.circle.cx" :cy="ubicacion.circle.cy" :r="ubicacion.circle.r"/>
            </svg>
            <span>{{ ubicacion.texto }}</span>
          </div>
        </div>

        <!-- Columna 4: Redes sociales (FB e IG) -->
        <div class="footer__social">
          <h4 class="footer__heading">Síguenos</h4>
          <div class="footer__social-icons">
            <a
              v-for="red in redes"
              :key="red.nombre"
              :href="red.url"
              :title="red.nombre"
              class="footer__social-link"
              target="_blank"
              rel="noopener noreferrer"
            >
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                <path v-if="red.path" :d="red.path"/>
                <template v-if="red.paths">
                  <path v-for="(d, j) in red.paths" :key="j" :d="d"/>
                </template>
                <circle v-if="red.circle" :cx="red.circle.cx" :cy="red.circle.cy" :r="red.circle.r" fill="currentColor" stroke="none"/>
              </svg>
            </a>
          </div>
        </div>
      </div>

      <!-- Línea final -->
      <div class="footer__bottom">
        <p>
          &copy; {{ new Date().getFullYear() }} Pan'orama Chiapas &mdash; Todos los
          derechos reservados.
        </p>
        <p class="footer__bottom-sub">
          Hecho con
          <svg class="footer__inline-icon" viewBox="0 0 24 24" fill="currentColor" stroke="none"><path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"/></svg>
          en Chiapas, México.
        </p>
      </div>
    </div>
  </footer>
</template>

<style scoped>
.footer {
  background: var(--color-principal);
  color: var(--color-gris-claro);
  padding: 4rem 1.5rem 2rem;
}

.footer__grid {
  display: grid;
  grid-template-columns: 2fr 1fr 1.3fr 1fr;
  gap: 2.5rem;
  padding-bottom: 3rem;
  border-bottom: 1px solid rgba(255, 253, 249, 0.1);
}

/* Logo */
.footer__logo-img {
  width: 80px;
  height: 80px;
  border-radius: 50%;
  object-fit: cover;
  margin-bottom: 1rem;
  border: 2px solid rgba(184, 83, 48, 0.4);
}

.footer__brand-name {
  font-family: var(--font-serif);
  font-size: 1.3rem;
  color: var(--color-blanco);
  margin-bottom: 0.6rem;
}

.footer__brand-desc {
  font-size: 0.9rem;
  line-height: 1.65;
  color: var(--color-gris);
}

/* Headings */
.footer__heading {
  font-family: var(--font-serif);
  font-size: 1.05rem;
  color: var(--color-blanco);
  margin-bottom: 1rem;
  position: relative;
  padding-bottom: 0.6rem;
}

.footer__heading::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 30px;
  height: 2px;
  background: var(--color-acento-1);
  border-radius: 2px;
}

/* Links */
.footer__link-list {
  list-style: none;
}

.footer__link-list li {
  margin-bottom: 0.5rem;
}

.footer__link {
  color: var(--color-gris);
  font-size: 0.92rem;
  transition: color var(--transition), padding-left var(--transition);
}

.footer__link:hover {
  color: var(--color-acento-1);
  padding-left: 4px;
}

/* Ubicación / Somos de */
.footer__location-item {
  display: flex;
  align-items: flex-start;
  gap: 0.6rem;
  font-size: 0.95rem;
  line-height: 1.6;
  color: var(--color-gris-claro);
}

.footer__location-icon {
  width: 20px;
  height: 20px;
  flex-shrink: 0;
  margin-top: 2px;
  stroke: var(--color-acento-1);
}

/* Redes */
.footer__social-icons {
  display: flex;
  gap: 0.8rem;
}

.footer__social-link {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 44px;
  height: 44px;
  border-radius: 50%;
  background: rgba(255, 253, 249, 0.08);
  transition: all var(--transition);
  text-decoration: none;
  color: var(--color-gris-claro);
}

.footer__social-link svg {
  width: 20px;
  height: 20px;
}

.footer__social-link:hover {
  background: var(--color-acento-1);
  transform: translateY(-3px);
  color: var(--color-blanco);
}

/* Bottom */
.footer__bottom {
  text-align: center;
  padding-top: 2rem;
  font-size: 0.85rem;
  color: var(--color-gris);
}

.footer__bottom-sub {
  margin-top: 0.3rem;
  font-size: 0.8rem;
  opacity: 0.7;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 0.3rem;
}

.footer__inline-icon {
  width: 14px;
  height: 14px;
  color: var(--color-acento-1);
  flex-shrink: 0;
}

@media (max-width: 900px) {
  .footer__grid {
    grid-template-columns: 1fr 1fr;
  }
}

@media (max-width: 600px) {
  .footer__grid {
    grid-template-columns: 1fr;
    gap: 2rem;
  }
}
</style>
