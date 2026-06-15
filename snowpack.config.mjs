// The @astrojs/renderer-vue server entry imports `vue/server-renderer`, which
// snowpack only discovers mid-build and races to pre-bundle (ENOENT on a cold
// cache, e.g. in CI). Declaring it up front prepares it during startup instead.
export default {
  packageOptions: {
    knownEntrypoints: ['vue/server-renderer'],
  },
};
