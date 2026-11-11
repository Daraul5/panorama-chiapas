<script setup>
// FooterSection — Logo, redes sociales y datos de contacto
import logo from '../assets/logo.png'

const redes = [
  {
    nombre: 'Facebook',
    url: '#',
    path: 'M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z',
  },
  {
    nombre: 'Instagram',
    url: '#',
    paths: [
      'M3 7a4 4 0 0 1 4-4h10a4 4 0 0 1 4 4v10a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4V7z',
      'M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z',
    ],
    circle: { cx: 17.5, cy: 6.5, r: 1.5 },
  },
  {
    nombre: 'TikTok',
    url: '#',
    path: 'M9 12a4 4 0 1 0 4 4V4a5 5 0 0 0 5 5',
  },
  {
    nombre: 'WhatsApp',
    url: '#',
    paths: [
      'M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z',
    ],
  },
]

const contacto = [
  {
    texto: 'contacto@panoramachiapas.mx',
    // envelope icon
    paths: [
      'M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z',
      'M22 6l-10 7L2 6',
    ],
  },
  {
    texto: '+52 (961) 000-0000',
    // phone icon
    paths: [
      'M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6A19.79 19.79 0 0 1 2.12 4.18 2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z',
    ],
  },
  {
    texto: 'Tuxtla Gutiérrez, Chiapas, México',
    // map pin icon
    paths: [
      'M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z',
    ],
    circle: { cx: 12, cy: 10, r: 3 },
  },
]

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

        <!-- Columna 3: Contacto -->
        <div class="footer__contact">
          <h4 class="footer__heading">Contacto</h4>
          <ul class="footer__contact-list">
            <li v-for="(item, i) in contacto" :key="i" class="footer__contact-item">
              <svg class="footer__contact-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                <path v-for="(d, j) in item.paths" :key="j" :d="d"/>
                <circle v-if="item.circle" :cx="item.circle.cx" :cy="item.circle.cy" :r="item.circle.r"/>
              </svg>
              <span>{{ item.texto }}</span>
            </li>
          </ul>
        </div>

        <!-- Columna 4: Redes sociales -->
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
  grid-template-columns: 2fr 1fr 1.2fr 1fr;
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

.placeholder-label--mini {
  padding: 0;
  background: transparent;
}

.placeholder-label--mini svg {
  width: 24px;
  height: 24px;
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

/* Contacto */
.footer__contact-list {
  list-style: none;
  font-size: 0.9rem;
}

.footer__contact-item {
  display: flex;
  align-items: flex-start;
  gap: 0.6rem;
  margin-bottom: 0.8rem;
  line-height: 1.5;
}

.footer__contact-icon {
  width: 18px;
  height: 18px;
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
