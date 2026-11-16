<script setup>
// PackagingSection — Empaque artesanal de colección (Cofre de Madera & Laca)
import imagenEmpaque from '../assets/empaque.jpeg'
</script>

<template>
  <section id="empaque" class="packaging">
    <div class="container">
      <h2 class="section-title">Diseño del Empaque</h2>
      <hr class="section-divider" />
      <p class="section-subtitle">
        Una pieza artesanal concebida para honrar la tradición y perdurar en el tiempo.
      </p>

      <!-- Presentación destacada del empaque -->
      <article class="packaging__featured">
        <div class="packaging__media">
          <img
            :src="imagenEmpaque"
            alt="Cofre de Madera & Laca - Pan'orama Chiapas"
            class="packaging__img"
          />
        </div>

        <div class="packaging__info">
          <div class="packaging__badge-row">
            <span class="packaging__icon">
              <!-- Icono artesanal / madera -->
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                <path d="M12 22V8"/>
                <path d="M5 12H2a10 10 0 0 0 20 0h-3"/>
                <path d="M8 6l4-4 4 4"/>
                <path d="M6 10l6-4 6 4"/>
              </svg>
            </span>
            <span class="packaging__tag">Edición Artesanal</span>
          </div>

          <h3 class="packaging__title">Cofre de Madera & Laca</h3>

          <p class="packaging__desc">
            Caja de pino reciclado con motivos de laca de Chiapa de Corzo.
            Un empaque conmemorativo que rinde homenaje a la maestría de los
            artesanos chiapanecos.
          </p>

          <p class="packaging__subdesc">
            Diseñado especialmente para conservar la frescura y aroma del pan
            tradicional de horno de leña, convirtiendo cada caja en un souvenir
            reutilizable de valor cultural.
          </p>

          <div class="packaging__features">
            <div class="packaging__feature-item">
              <span class="packaging__feature-dot"></span>
              <div>
                <strong>Material:</strong> Pino reciclado de origen sustentable
              </div>
            </div>
            <div class="packaging__feature-item">
              <span class="packaging__feature-dot"></span>
              <div>
                <strong>Inspiración:</strong> Laca tradicional de Chiapa de Corzo
              </div>
            </div>
            <div class="packaging__feature-item">
              <span class="packaging__feature-dot"></span>
              <div>
                <strong>Función:</strong> Protección hermética y pieza de colección
              </div>
            </div>
          </div>
        </div>
      </article>
    </div>
  </section>
</template>

<style scoped>
.packaging {
  padding: var(--section-padding);
  background-color: var(--color-principal);
  color: var(--color-blanco);
}

.packaging .section-title {
  color: var(--color-blanco);
}

.packaging .section-subtitle {
  color: var(--color-gris-claro);
}

.packaging .section-divider {
  background: var(--color-acento-1);
}

.packaging__featured {
  background: rgba(255, 253, 249, 0.06);
  border: 1px solid rgba(255, 253, 249, 0.14);
  border-radius: var(--border-radius);
  overflow: hidden;
  backdrop-filter: blur(6px);
  display: grid;
  grid-template-columns: 1.15fr 1fr;
  align-items: center;
  box-shadow: 0 12px 40px rgba(0, 0, 0, 0.25);
  transition: transform var(--transition), box-shadow var(--transition);
}

.packaging__featured:hover {
  transform: translateY(-4px);
  box-shadow: 0 16px 48px rgba(0, 0, 0, 0.35);
}

.packaging__media {
  width: 100%;
  height: 100%;
  min-height: 380px;
  background: rgba(0, 0, 0, 0.15);
  overflow: hidden;
}

.packaging__img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  display: block;
  transition: transform var(--transition);
}

.packaging__featured:hover .packaging__img {
  transform: scale(1.03);
}

.packaging__info {
  padding: 3rem 2.8rem;
  display: flex;
  flex-direction: column;
}

.packaging__badge-row {
  display: flex;
  align-items: center;
  gap: 0.8rem;
  margin-bottom: 1.2rem;
}

.packaging__icon {
  display: flex;
  width: 32px;
  height: 32px;
  color: var(--color-acento-1);
}

.packaging__icon svg {
  width: 100%;
  height: 100%;
}

.packaging__tag {
  font-family: var(--font-sans);
  font-size: 0.75rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  background: var(--color-acento-1);
  color: var(--color-blanco);
  padding: 0.3rem 0.9rem;
  border-radius: 20px;
}

.packaging__title {
  font-size: clamp(1.6rem, 3vw, 2.2rem);
  color: var(--color-blanco);
  margin-bottom: 1rem;
}

.packaging__desc {
  font-size: 1.05rem;
  color: var(--color-gris-claro);
  line-height: 1.7;
  margin-bottom: 0.8rem;
}

.packaging__subdesc {
  font-size: 0.95rem;
  color: var(--color-gris);
  line-height: 1.65;
  margin-bottom: 1.8rem;
}

.packaging__features {
  display: flex;
  flex-direction: column;
  gap: 0.75rem;
  border-top: 1px solid rgba(255, 253, 249, 0.12);
  padding-top: 1.2rem;
}

.packaging__feature-item {
  display: flex;
  align-items: center;
  gap: 0.8rem;
  font-size: 0.92rem;
  color: var(--color-gris-claro);
}

.packaging__feature-dot {
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: var(--color-acento-1);
  flex-shrink: 0;
}

.packaging__feature-item strong {
  color: var(--color-blanco);
}

@media (max-width: 900px) {
  .packaging__featured {
    grid-template-columns: 1fr;
  }

  .packaging__media {
    min-height: 280px;
    max-height: 380px;
  }

  .packaging__info {
    padding: 2rem 1.8rem;
  }
}
</style>
