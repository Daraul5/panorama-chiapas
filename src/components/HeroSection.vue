<script setup>
// HeroSection — Encabezado principal con logo, título, eslogan y CTA
import logo from '../assets/logo.png'
</script>

<template>
  <section class="hero">
    <!-- Textura decorativa de fondo -->
    <div class="hero__texture"></div>

    <div class="hero__content">
      <!-- Espacio para logotipo principal -->
      <div class="hero__logo">
        <img :src="logo" alt="Logo Pan'orama Chiapas" class="hero__logo-img" />
      </div>

      <h1 class="hero__title">Pan'orama Chiapas</h1>

      <p class="hero__eslogan">12 regiones, un mismo pan</p>
      <p class="hero__sub-eslogan">Sabores y Tradición en Cada Bocado</p>

      <a href="#catalogo" class="btn-primary hero__cta">
        Descubre el Catálogo
      </a>
    </div>

    <!-- Ornamento inferior ondulado -->
    <div class="hero__wave">
      <svg viewBox="0 0 1440 120" preserveAspectRatio="none">
        <path
          d="M0,64 C360,120 720,0 1080,64 C1260,96 1380,80 1440,64 L1440,120 L0,120 Z"
          fill="var(--color-fondo)"
        />
      </svg>
    </div>
  </section>
</template>

<style scoped>
.hero {
  position: relative;
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(
    170deg,
    var(--color-principal) 0%,
    #1a3628 50%,
    #2d5a44 100%
  );
  overflow: hidden;
  text-align: center;
  padding: 4rem 1.5rem 6rem;
}

/* Textura sutil tipo tejido */
.hero__texture {
  position: absolute;
  inset: 0;
  opacity: 0.06;
  background-image:
    repeating-linear-gradient(
      45deg,
      transparent,
      transparent 10px,
      rgba(255, 255, 255, 0.1) 10px,
      rgba(255, 255, 255, 0.1) 20px
    ),
    repeating-linear-gradient(
      -45deg,
      transparent,
      transparent 10px,
      rgba(255, 255, 255, 0.08) 10px,
      rgba(255, 255, 255, 0.08) 20px
    );
  pointer-events: none;
}

.hero__content {
  position: relative;
  z-index: 2;
  max-width: 700px;
}

/* Logo placeholder */
.hero__logo {
  margin: 0 auto 2rem;
  max-width: 220px;
}

.hero__logo-placeholder {
  aspect-ratio: 1 / 1;
  border-radius: 50%;
  border: 4px solid rgba(184, 83, 48, 0.5);
}

/* Logo imagen real */
.hero__logo-img {
  width: 100%;
  height: auto;
  border-radius: 50%;
  border: 4px solid rgba(184, 83, 48, 0.5);
  object-fit: cover;
  aspect-ratio: 1 / 1;
}

/* Título */
.hero__title {
  font-family: var(--font-serif);
  font-size: clamp(2.5rem, 7vw, 4.5rem);
  color: var(--color-blanco);
  font-weight: 800;
  letter-spacing: 0.02em;
  margin-bottom: 1rem;
  text-shadow: 0 2px 30px rgba(0, 0, 0, 0.3);
}

/* Eslogan */
.hero__eslogan {
  font-family: var(--font-serif);
  font-size: clamp(1.2rem, 3vw, 1.6rem);
  color: var(--color-acento-1);
  font-weight: 600;
  font-style: italic;
  margin-bottom: 0.4rem;
}

.hero__sub-eslogan {
  font-family: var(--font-sans);
  font-size: clamp(1rem, 2vw, 1.15rem);
  color: var(--color-gris-claro);
  font-weight: 300;
  letter-spacing: 0.08em;
  text-transform: uppercase;
  margin-bottom: 2.5rem;
}

/* CTA */
.hero__cta {
  font-size: 1.1rem;
  padding: 1rem 2.8rem;
}

/* Onda inferior */
.hero__wave {
  position: absolute;
  bottom: -1px;
  left: 0;
  width: 100%;
  line-height: 0;
}

.hero__wave svg {
  width: 100%;
  height: 80px;
}

@media (max-width: 600px) {
  .hero {
    min-height: 90vh;
    padding: 3rem 1rem 5rem;
  }

  .hero__logo {
    max-width: 160px;
  }
}
</style>
