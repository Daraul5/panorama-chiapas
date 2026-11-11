<script setup>
// AboutSection — Misión, Visión e introducción del proyecto
</script>

<template>
  <section id="nosotros" class="about">
    <div class="container">
      <h2 class="section-title">Nosotros</h2>
      <hr class="section-divider" />
      <p class="section-subtitle">
        Proyecto integrador que fusiona el rescate gastronómico artesanal con el
        diseño de identidad cultural, conectando a maestros panaderos con nichos
        turísticos y gourmet.
      </p>

      <div class="about__grid">
        <!-- Imagen lateral -->
        <div class="about__image">
          <div class="image-placeholder about__photo">
            <span class="placeholder-label">
              <svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="9"/><circle cx="12" cy="12" r="4"/><circle cx="17" cy="7" r="1" fill="currentColor" stroke="none"/></svg>
              Foto del proyecto
            </span>
          </div>
        </div>

        <!-- Misión y Visión -->
        <div class="about__cards">
          <article class="about__card">
            <div class="about__card-icon">
              <!-- Icono de hoja / planta -->
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                <path d="M12 22c-4-4-8-7.5-8-12a8 8 0 0 1 16 0c0 4.5-4 8-8 12Z"/>
                <path d="M12 10v8"/>
                <path d="M8 14c2-1 4-1 4-4"/>
                <path d="M16 14c-2-1-4-1-4-4"/>
              </svg>
            </div>
            <h3 class="about__card-title">Misión</h3>
            <p class="about__card-text">
              Enaltecer y preservar el patrimonio panadero chiapaneco conectando
              a panaderos tradicionales con nuevos mercados a través de una
              experiencia sensorial, educativa y de diseño cultural.
            </p>
          </article>

          <article class="about__card">
            <div class="about__card-icon">
              <!-- Icono de montañas -->
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                <path d="m8 3 4 8 5-5 5 15H2L8 3z"/>
                <path d="m5 15 3-3 3 3"/>
              </svg>
            </div>
            <h3 class="about__card-title">Visión</h3>
            <p class="about__card-text">
              Ser el referente estatal y nacional de souvenirs gastronómicos
              auténticos de Chiapas, impulsando la economía comunitaria y el
              turismo identitario.
            </p>
          </article>
        </div>
      </div>
    </div>
  </section>
</template>

<style scoped>
.about {
  padding: var(--section-padding);
  background-color: var(--color-fondo);
}

.about__grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 3rem;
  align-items: center;
}

.about__photo {
  aspect-ratio: 3 / 4;
  border-radius: var(--border-radius);
  border: 3px solid var(--color-gris-claro);
}

.about__cards {
  display: flex;
  flex-direction: column;
  gap: 2rem;
}

.about__card {
  background: var(--color-blanco);
  border-radius: var(--border-radius);
  padding: 2rem 2rem 2rem 2.5rem;
  border-left: 5px solid var(--color-acento-1);
  box-shadow: var(--shadow-card);
  transition: transform var(--transition), box-shadow var(--transition);
}

.about__card:hover {
  transform: translateY(-4px);
  box-shadow: var(--shadow-hover);
}

.about__card-icon {
  width: 44px;
  height: 44px;
  margin-bottom: 0.6rem;
  color: var(--color-acento-1);
}

.about__card-icon svg {
  width: 100%;
  height: 100%;
}

.about__card-title {
  font-size: 1.5rem;
  margin-bottom: 0.6rem;
  color: var(--color-principal);
}

.about__card-text {
  font-size: 1rem;
  line-height: 1.75;
  color: var(--color-acento-2);
}

@media (max-width: 768px) {
  .about__grid {
    grid-template-columns: 1fr;
  }

  .about__photo {
    aspect-ratio: 16 / 9;
    max-height: 280px;
  }
}
</style>
