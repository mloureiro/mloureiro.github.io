<template>
	<div :style="style" class="hexagon-row">
		<slot />
	</div>
</template>

<script>
export default {
	props: {
		offset: { type: Number, default: 0 },
	},
	computed: {
		style() {
			return this.offset
				? `--hexagon-offset: ${this.offset}rem`
				: null
		},
	},
};
</script>

<style scoped>
.hexagon-wrapper > .hexagon-row {
	--hexagon-offset: 0rem;
	display: flex;
	margin-left: calc(4 * var(--hexagon-offset));
}
.hexagon-wrapper > .hexagon-row:nth-of-type(even) {
	margin-left: calc(2rem + (4 * var(--hexagon-offset)));
	margin-top: -1rem;
}
</style>