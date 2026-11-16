<script setup>
// CollectionsSection — Tres ediciones temáticas de colección
import primeraEdicion from '../assets/primera-edicion.jpeg'
import segundaEdicion from '../assets/segunda-edicion.jpeg'
import edicionEspecial from '../assets/edicion-especial.jpeg'
import coleccionCompleta from '../assets/coleccion-completa.jpeg'

const colecciones = [
  {
    id: 1,
    titulo: 'Edición 1: Altos y Valles Centrales',
    contenido:
      'Cazueleja, Marquesote coiteco, Salvadillo, Rosquillas, Hojaldra y Empanadita.',
    sabores: 'Anís, canela, piloncillo',
    imagen: primeraEdicion,
    // mountain icon
    iconPath: 'M8 3l4 8 5-5 5 15H2L8 3z M5 15l3-3 3 3',
  },
  {
    id: 2,
    titulo: 'Edición 2: Costa y Bosques del Café',
    contenido:
      'Turulete, Pan fino de café, Pan de cacao, Marquesote frailescano, Gordita y Marquesote de Carranza.',
    sabores: 'Queso seco, cacao, café',
    imagen: segundaEdicion,
    // coffee cup icon
    iconPath: 'M17 8h1a4 4 0 0 1 0 8h-1 M3 8h14v9a4 4 0 0 1-4 4H7a4 4 0 0 1-4-4V8z M6 2v3 M10 2v3 M14 2v3',
  },
  {
    id: 3,
    titulo: 'Edición Especial: Gran Reserva Estatal',
    contenido:
      'Cofre de 12 piezas, café orgánico de Jaltenango y cacao de Tuxtla Chico.',
    sabores: 'Selección completa',
    imagen: edicionEspecial,
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

      <!-- Banner de la trilogía completa de ediciones -->
      <div class="collections__showcase">
        <div class="collections__showcase-media">
          <img
            :src="coleccionCompleta"
            alt="Trilogía Pan'orama Chiapas - Las Tres Ediciones"
            class="collections__showcase-img"
          />
        </div>
        <div class="collections__showcase-info">
          <span class="collections__showcase-badge">Trilogía Pan'orama</span>
          <h3 class="collections__showcase-title">Un recorrido por el mapa panadero</h3>
          <p class="collections__showcase-desc">
            Nuestras tres cajas conmemorativas reúnen las recetas más emblemáticas
            de los valles, montañas y costas de Chiapas en una experiencia
            gastronómica y cultural única.
          </p>
        </div>
      </div>

      <!-- Grid de las 3 ediciones individuales -->
      <div class="collections__grid">
        <article
          v-for="col in colecciones"
          :key="col.id"
          class="collections__card"
          :class="{ 'collections__card--especial': col.id === 3 }"
        >
          <!-- Fotografía real de la caja / edición -->
          <div class="collections__card-media">
            <img
              :src="col.imagen"
              :alt="col.titulo"
              class="collections__card-img"
            />
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

/* Banner de la colección completa */
.collections__showcase {
  background: var(--color-blanco);
  border-radius: var(--border-radius);
  overflow: hidden;
  box-shadow: var(--shadow-card);
  margin-bottom: 3.5rem;
  border: 1px solid var(--color-gris-claro);
  display: grid;
  grid-template-columns: 1.2fr 1fr;
  align-items: center;
}

.collections__showcase-media {
  width: 100%;
  height: 100%;
  min-height: 300px;
  background: #f0ebe1;
}

.collections__showcase-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  display: block;
}

.collections__showcase-info {
  padding: 2.5rem;
}

.collections__showcase-badge {
  display: inline-block;
  background: var(--color-acento-1);
  color: var(--color-blanco);
  font-family: var(--font-sans);
  font-size: 0.75rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  padding: 0.3rem 0.9rem;
  border-radius: 20px;
  margin-bottom: 1rem;
}

.collections__showcase-title {
  font-size: clamp(1.4rem, 2.5vw, 1.9rem);
  color: var(--color-principal);
  margin-bottom: 0.8rem;
}

.collections__showcase-desc {
  font-size: 1rem;
  color: var(--color-acento-2);
  line-height: 1.7;
}

/* Grid de tarjetas individuales */
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
  display: flex;
  flex-direction: column;
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

.collections__card-media {
  width: 100%;
  aspect-ratio: 16 / 10;
  overflow: hidden;
  background: #f0ebe1;
}

.collections__card-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  display: block;
  transition: transform var(--transition);
}

.collections__card:hover .collections__card-img {
  transform: scale(1.04);
}

.collections__card-body {
  padding: 1.5rem 1.8rem 1.8rem;
  display: flex;
  flex-direction: column;
  flex-grow: 1;
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
  flex-grow: 1;
}

.collections__card-sabores {
  font-size: 0.88rem;
  background: var(--color-fondo);
  padding: 0.5rem 1rem;
  border-radius: 8px;
  color: var(--color-acento-2);
  display: inline-block;
  align-self: flex-start;
}

.collections__card-sabores-label {
  font-weight: 700;
  color: var(--color-acento-1);
}

@media (max-width: 860px) {
  .collections__showcase {
    grid-template-columns: 1fr;
  }

  .collections__showcase-media {
    min-height: 220px;
  }

  .collections__showcase-info {
    padding: 1.8rem;
  }
}

@media (max-width: 640px) {
  .collections__grid {
    grid-template-columns: 1fr;
  }
}
</style>
