<script setup>
// CatalogSection — Grid de 12 tarjetas del catálogo gastronómico municipal
import imgCazueleja from '../assets/panes/cazueleja.jpeg'
import imgMarquesote from '../assets/panes/marquesote.jpeg'
import imgSalvadillo from '../assets/panes/salvadillo.jpeg'
import imgRosquillas from '../assets/panes/rosquillas.jpeg'
import imgTurulete from '../assets/panes/turulete.jpeg'
import imgPanCacao from '../assets/panes/pan-cacao-platano.jpeg'
import imgPanCafe from '../assets/panes/pan-fino-cafe.jpeg'
import imgEmpanaditas from '../assets/panes/empanaditas-requeson.jpeg'
import imgHojaldras from '../assets/panes/hojaldras-manteca.jpeg'
import imgGorditas from '../assets/panes/gorditas-maiz-panela.jpeg'

const panes = [
  {
    id: 1,
    municipio: 'San Cristóbal de Las Casas',
    nombre: 'Cazueleja / Pan de Yema',
    descripcion:
      'Pan suave horneado en cazuela de barro, enriquecido con yema, anís silvestre y canela.',
    imagen: imgCazueleja,
  },
  {
    id: 2,
    municipio: 'Ocozocoautla (Coita)',
    nombre: 'Marquesote Coiteco',
    descripcion:
      'Masa ultra esponjosa de almidón de yuca y claras a punto de turrón.',
    imagen: imgMarquesote,
  },
  {
    id: 3,
    municipio: 'Comitán de Domínguez',
    nombre: 'Salvadillo de Trigo',
    descripcion:
      'Pan seco y crujiente de harina integral.',
    imagen: imgSalvadillo,
  },
  {
    id: 4,
    municipio: 'Chiapa de Corzo',
    nombre: 'Rosquillas de Manteca',
    descripcion:
      'Estructura crocante horneada a leña.',
    imagen: imgRosquillas,
  },
  {
    id: 5,
    municipio: 'Tonalá / Arriaga',
    nombre: 'Turulete Costeño',
    descripcion:
      'Galleta de maíz tostado, piloncillo y queso seco.',
    imagen: imgTurulete,
  },
  {
    id: 6,
    municipio: 'Villaflores',
    nombre: 'Marquesote Frailescano',
    descripcion:
      'Pan aireado con notas lácteas y queso prensado.',
    imagen: imgMarquesote,
  },
  {
    id: 7,
    municipio: 'Venustiano Carranza',
    nombre: 'Marquesote Bañado',
    descripcion:
      'Bizcocho infusionado con jarabe de canela, limón criollo y anís estrella.',
    imagen: imgMarquesote,
  },
  {
    id: 8,
    municipio: 'Pichucalco',
    nombre: 'Pan de Cacao y Plátano',
    descripcion:
      'Masa densa de plátano macho y cacao criollo.',
    imagen: imgPanCacao,
  },
  {
    id: 9,
    municipio: 'Tapachula',
    nombre: 'Pan Fino con Café',
    descripcion:
      'Pan dulce con infusión de café arábica y relleno de queso crema.',
    imagen: imgPanCafe,
  },
  {
    id: 10,
    municipio: 'Suchiapa',
    nombre: 'Empanaditas de Requesón',
    descripcion:
      'Masa quebrada rellena de requesón dulce.',
    imagen: imgEmpanaditas,
  },
  {
    id: 11,
    municipio: 'Berriozábal',
    nombre: 'Hojaldras de Manteca',
    descripcion:
      'Finas capas con barniz de piloncillo.',
    imagen: imgHojaldras,
  },
  {
    id: 12,
    municipio: 'Simojovel',
    nombre: 'Gorditas de Maíz y Panela',
    descripcion:
      'Panecillos rústicos de maíz dulce.',
    imagen: imgGorditas,
  },
]
</script>

<template>
  <section id="catalogo" class="catalog">
    <div class="container">
      <h2 class="section-title">Catálogo Gastronómico Municipal</h2>
      <hr class="section-divider" />
      <p class="section-subtitle">
        12 panes artesanales, cada uno arraigado en la tierra, el horno y las
        manos de su comunidad.
      </p>

      <div class="catalog__grid">
        <article
          v-for="pan in panes"
          :key="pan.id"
          class="catalog__card"
        >
          <!-- Fotografía real del pan -->
          <div class="catalog__card-media">
            <img
              :src="pan.imagen"
              :alt="pan.nombre"
              class="catalog__card-img"
              loading="lazy"
            />
          </div>

          <div class="catalog__card-body">
            <span class="catalog__card-number">{{ String(pan.id).padStart(2, '0') }}</span>
            <h3 class="catalog__card-name">{{ pan.nombre }}</h3>
            <p class="catalog__card-municipio">{{ pan.municipio }}</p>
            <p class="catalog__card-desc">{{ pan.descripcion }}</p>
          </div>
        </article>
      </div>
    </div>
  </section>
</template>

<style scoped>
.catalog {
  padding: var(--section-padding);
  background-color: var(--color-blanco);
}

.catalog__grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 2rem;
}

.catalog__card {
  background: var(--color-fondo);
  border-radius: var(--border-radius);
  overflow: hidden;
  box-shadow: var(--shadow-card);
  transition: transform var(--transition), box-shadow var(--transition);
  border: 1px solid var(--color-gris-claro);
  display: flex;
  flex-direction: column;
}

.catalog__card:hover {
  transform: translateY(-6px);
  box-shadow: var(--shadow-hover);
}

.catalog__card-media {
  width: 100%;
  aspect-ratio: 4 / 3;
  overflow: hidden;
  background-color: #ebe4d8;
  position: relative;
}

.catalog__card-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  display: block;
  transition: transform var(--transition);
}

.catalog__card:hover .catalog__card-img {
  transform: scale(1.06);
}

.catalog__card-body {
  padding: 1.4rem 1.5rem 1.6rem;
  position: relative;
  display: flex;
  flex-direction: column;
  flex-grow: 1;
}

.catalog__card-number {
  position: absolute;
  top: -1.2rem;
  right: 1.2rem;
  background: var(--color-acento-1);
  color: var(--color-blanco);
  font-family: var(--font-serif);
  font-weight: 700;
  font-size: 0.85rem;
  width: 2.4rem;
  height: 2.4rem;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow: 0 2px 8px rgba(184, 83, 48, 0.35);
  z-index: 2;
}

.catalog__card-name {
  font-size: 1.15rem;
  color: var(--color-principal);
  margin-bottom: 0.3rem;
  padding-right: 2rem;
}

.catalog__card-municipio {
  font-size: 0.85rem;
  color: var(--color-acento-1);
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.06em;
  margin-bottom: 0.7rem;
}

.catalog__card-desc {
  font-size: 0.92rem;
  line-height: 1.6;
  color: var(--color-acento-2);
}

@media (max-width: 640px) {
  .catalog__grid {
    grid-template-columns: 1fr;
  }
}
</style>
