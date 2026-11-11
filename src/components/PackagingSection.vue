<script setup>
// PackagingSection — Dos opciones de diseño de empaque

const empaques = [
  {
    id: 'a',
    titulo: 'Opción A: Cofre de Madera & Laca',
    descripcion:
      'Caja de pino reciclado con motivos de laca de Chiapa de Corzo. Un empaque que rinde homenaje a la maestría artesanal chiapaneca.',
    etiqueta: 'Artesanal',
    // tree/wood icon paths
    iconPaths: [
      'M12 22V8',
      'M5 12H2a10 10 0 0 0 20 0h-3',
      'M8 6l4-4 4 4',
      'M6 10l6-4 6 4',
    ],
  },
  {
    id: 'b',
    titulo: 'Opción B: Estuche Telar & Kraft',
    descripcion:
      'Cartón corrugado ecológico con patrones de telares de Zinacantán. Diseño sustentable que abraza la identidad textil indígena.',
    etiqueta: 'Ecológico',
    // weave/textile icon paths
    iconPaths: [
      'M3 5h18',
      'M3 10h18',
      'M3 15h18',
      'M3 20h18',
      'M7 3v18',
      'M12 3v18',
      'M17 3v18',
    ],
  },
]
</script>

<template>
  <section id="empaque" class="packaging">
    <div class="container">
      <h2 class="section-title">Diseño del Empaque</h2>
      <hr class="section-divider" />
      <p class="section-subtitle">
        Dos propuestas que honran la tradición y la sustentabilidad.
      </p>

      <div class="packaging__grid">
        <article
          v-for="emp in empaques"
          :key="emp.id"
          class="packaging__card"
        >
          <!-- Espacio para foto del empaque -->
          <div class="image-placeholder packaging__card-img">
            <span class="placeholder-label">
              <svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="9"/><circle cx="12" cy="12" r="4"/><circle cx="17" cy="7" r="1" fill="currentColor" stroke="none"/></svg>
              Foto del empaque
            </span>
          </div>

          <div class="packaging__card-body">
            <div class="packaging__card-header">
              <span class="packaging__card-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round">
                  <path v-for="(d, i) in emp.iconPaths" :key="i" :d="d"/>
                </svg>
              </span>
              <span class="packaging__card-tag">{{ emp.etiqueta }}</span>
            </div>
            <h3 class="packaging__card-title">{{ emp.titulo }}</h3>
            <p class="packaging__card-desc">{{ emp.descripcion }}</p>
          </div>
        </article>
      </div>
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

.packaging__grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(380px, 1fr));
  gap: 2.5rem;
}

.packaging__card {
  background: rgba(255, 253, 249, 0.06);
  border: 1px solid rgba(255, 253, 249, 0.12);
  border-radius: var(--border-radius);
  overflow: hidden;
  backdrop-filter: blur(6px);
  transition: transform var(--transition), box-shadow var(--transition);
}

.packaging__card:hover {
  transform: translateY(-5px);
  box-shadow: 0 12px 40px rgba(0, 0, 0, 0.3);
}

.packaging__card-img {
  border-radius: 0;
  aspect-ratio: 16 / 10;
  background: linear-gradient(
    135deg,
    rgba(90, 58, 34, 0.3) 25%,
    rgba(90, 58, 34, 0.15) 25%,
    rgba(90, 58, 34, 0.15) 50%,
    rgba(90, 58, 34, 0.3) 50%,
    rgba(90, 58, 34, 0.3) 75%,
    rgba(90, 58, 34, 0.15) 75%
  );
  background-size: 40px 40px;
}

.packaging__card-img .placeholder-label {
  background: rgba(38, 73, 54, 0.7);
  color: var(--color-gris-claro);
}

.packaging__card-img .placeholder-label svg {
  stroke: var(--color-gris-claro);
}

.packaging__card-body {
  padding: 1.5rem 1.8rem 2rem;
}

.packaging__card-header {
  display: flex;
  align-items: center;
  gap: 0.8rem;
  margin-bottom: 0.8rem;
}

.packaging__card-icon {
  display: flex;
  width: 36px;
  height: 36px;
  color: var(--color-acento-1);
}

.packaging__card-icon svg {
  width: 100%;
  height: 100%;
}

.packaging__card-tag {
  font-family: var(--font-sans);
  font-size: 0.75rem;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 0.1em;
  background: var(--color-acento-1);
  color: var(--color-blanco);
  padding: 0.25rem 0.8rem;
  border-radius: 20px;
}

.packaging__card-title {
  font-size: 1.3rem;
  color: var(--color-blanco);
  margin-bottom: 0.7rem;
}

.packaging__card-desc {
  font-size: 0.95rem;
  color: var(--color-gris-claro);
  line-height: 1.7;
}

@media (max-width: 640px) {
  .packaging__grid {
    grid-template-columns: 1fr;
  }
}
</style>
