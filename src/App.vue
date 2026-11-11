<script setup>
import HeroSection from './components/HeroSection.vue'
import AboutSection from './components/AboutSection.vue'
import CatalogSection from './components/CatalogSection.vue'
import CollectionsSection from './components/CollectionsSection.vue'
import PackagingSection from './components/PackagingSection.vue'
import FooterSection from './components/FooterSection.vue'
</script>

<template>
  <div id="panorama-app">
    <HeroSection />
    <AboutSection />
    <CatalogSection />
    <CollectionsSection />
    <PackagingSection />
    <FooterSection />
  </div>
</template>

<style>
#panorama-app {
  min-height: 100vh;
  overflow-x: hidden;
}
</style>
