// @type-check enabled!
// @ts-check
export default /** @type {import('astro').AstroUserConfig} */ ({
  // Enable the Vue renderer to support Vue components.
  renderers: ['@astrojs/renderer-vue'],
  buildOptions: {
    site: 'https://mloureiro.github.io',
  },
});
