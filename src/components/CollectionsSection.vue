<script setup>
// CollectionsSection — Tres ediciones temáticas de colección

const colecciones = [
  {
    id: 1,
    titulo: 'Edición 1: Altos y Valles Centrales',
    contenido:
      'Cazueleja, Marquesote coiteco, Salvadillo, Rosquillas, Hojaldra y Empanadita.',
    sabores: 'Anís, canela, piloncillo',
    // mountain icon
    iconPath: 'M8 3l4 8 5-5 5 15H2L8 3z M5 15l3-3 3 3',
  },
  {
    id: 2,
    titulo: 'Edición 2: Costa y Bosques del Café',
    contenido:
      'Turulete, Pan fino de café, Pan de cacao, Marquesote frailescano, Gordita y Marquesote de Carranza.',
    sabores: 'Queso seco, cacao, café',
    // coffee cup icon
    iconPath: 'M17 8h1a4 4 0 0 1 0 8h-1 M3 8h14v9a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4V8z M6 2v3 M10 2v3 M14 2v3',
  },
  {
    id: 3,
    titulo: 'Edición Especial: Gran Reserva Estatal',
    contenido:
      'Cofre de 12 piezas, café orgánico de Jaltenango y cacao de Tuxtla Chico.',
    sabores: 'Selección completa',
    // gift box icon
    iconPath: 'M20 12v10H4V12 M2 7h20v5H2V7z M12 22V7 M12 7H7.5a2.5 2.5 0 0 1 0-5C11 2 12 7 12 7z M12 7h4.5a2.5 2.5 0 0 0 0-5C13 2 12 7 12 7z',
  },
]
</script>

<template>
  <section id="colecciones" class="collections">
    <div class="container">
      <h2 class="section-title">Colecciones Temáticas</h2>
      <hr class="section-divider" />
      <p class="section-subtitle">
        Cajas curadas que cuentan la historia de cada región a través de sus
        sabores.
      </p>

      <div class="collections__grid">
        <article
          v-for="col in colecciones"
          :key="col.id"
          class="collections__card"
          :class="{ 'collections__card--especial': col.id === 3 }"
        >
          <!-- Espacio para foto de la caja -->
          <div class="image-placeholder collections__card-img">
            <span class="placeholder-label">
              <svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="9"/><circle cx="12" cy="12" r="4"/><circle cx="17" cy="7" r="1" fill="currentColor" stroke="none"/></svg>
              Foto de la caja
            </span>
          </div>

          <!-- Cinta "Especial" para la edición especial -->
          <div v-if="col.id === 3" class="collections__ribbon">
            <svg class="collections__ribbon-star" viewBox="0 0 24 24" fill="currentColor" stroke="none">
              <polygon points="12,2 15.09,8.26 22,9.27 17,14.14 18.18,21.02 12,17.77 5.82,21.02 7,14.14 2,9.27 8.91,8.26"/>
            </svg>
            Especial
          </div>

          <div class="collections__card-body">
            <span class="collections__card-icon">
              <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                <path :d="col.iconPath"/>
              </svg>
            </span>
            <h3 class="collections__card-title">{{ col.titulo }}</h3>
            <p class="collections__card-contenido">{{ col.contenido }}</p>
            <div class="collections__card-sabores">
              <span class="collections__card-sabores-label">Sabor:</span>
              {{ col.sabores }}
            </div>
          </div>
        </article>
      </div>
    </div>
  </section>
</template>

<style scoped>
.collections {
  padding: var(--section-padding);
  background: linear-gradient(
    180deg,
    var(--color-fondo) 0%,
    #ede7da 100%
  );
}

.collections__grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
  gap: 2rem;
}

.collections__card {
  background: var(--color-blanco);
  border-radius: var(--border-radius);
  overflow: hidden;
  box-shadow: var(--shadow-card);
  transition: transform var(--transition), box-shadow var(--transition);
  border: 1px solid var(--color-gris-claro);
  position: relative;
}

.collections__card:hover {
  transform: translateY(-5px);
  box-shadow: var(--shadow-hover);
}

.collections__card--especial {
  border: 2px solid var(--color-acento-1);
}

/* Cinta diagonal SVG */
.collections__ribbon {
  position: absolute;
  top: 1rem;
  right: -2rem;
  background: var(--color-acento-1);
  color: var(--color-blanco);
  font-family: var(--font-serif);
  font-size: 0.75rem;
  font-weight: 700;
  padding: 0.3rem 2.5rem;
  transform: rotate(45deg);
  z-index: 3;
  letter-spacing: 0.05em;
  display: flex;
  align-items: center;
  gap: 0.3rem;
}

.collections__ribbon-star {
  width: 12px;
  height: 12px;
}

.collections__card-img {
  border-radius: 0;
  aspect-ratio: 16 / 9;
}

.collections__card-body {
  padding: 1.5rem 1.8rem 1.8rem;
}

.collections__card-icon {
  display: block;
  width: 40px;
  height: 40px;
  color: var(--color-acento-1);
  margin-bottom: 0.5rem;
}

.collections__card-icon svg {
  width: 100%;
  height: 100%;
}

.collections__card-title {
  font-size: 1.25rem;
  color: var(--color-principal);
  margin-bottom: 0.8rem;
}

.collections__card-contenido {
  font-size: 0.95rem;
  color: var(--color-acento-2);
  line-height: 1.65;
  margin-bottom: 1rem;
}

.collections__card-sabores {
  font-size: 0.88rem;
  background: var(--color-fondo);
  padding: 0.5rem 1rem;
  border-radius: 8px;
  color: var(--color-acento-2);
  display: inline-block;
}

.collections__card-sabores-label {
  font-weight: 700;
  color: var(--color-acento-1);
}

@media (max-width: 640px) {
  .collections__grid {
    grid-template-columns: 1fr;
  }
}
</style>
