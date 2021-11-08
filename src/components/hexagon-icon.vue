<template>
	<div class="hexagon-icon __wrapper">
		<img :src="src" :alt="alt" class="hexagon-icon __icon">
		<div class="hexagon-icon __top"></div>
		<div class="hexagon-icon __mid"></div>
		<div class="hexagon-icon __bottom"></div>
	</div>
</template>

<script>
export default {
	props: {
		src: { type: String, required: true },
		alt: { type: String, required: true },
	},
};
</script>

<style scoped>
.hexagon-icon.__wrapper {
	--hexagon-icon-size: 2rem;
	--hexagon-icon-edges-height: calc(0.5 * var(--hexagon-icon-size));
	--hexagon-icon-edges-width: calc(0.8125 * var(--hexagon-icon-size));
	position: relative;

}
.hexagon-icon.__icon {
	position: absolute;
	width: var(--hexagon-icon-size);
	height: var(--hexagon-icon-size);
	top: calc(0.4 * var(--hexagon-icon-size));
	left: calc(0.3 * var(--hexagon-icon-size));
}
.hexagon-icon.__top {
	width: 0;
	border-bottom: var(--hexagon-icon-edges-height) solid var(--c-primary-bg);
	border-left: var(--hexagon-icon-edges-width) solid transparent;
	border-right: var(--hexagon-icon-edges-width) solid transparent;
}
.hexagon-icon.__mid {
	width: calc(1.625 * var(--hexagon-icon-size));
	height: calc(0.8 * var(--hexagon-icon-size));
	background-color: var(--c-primary-bg);
}
.hexagon-icon.__bottom {
	width: 0;
	border-top: var(--hexagon-icon-edges-height) solid var(--c-primary-bg);
	border-left: var(--hexagon-icon-edges-width) solid transparent;
	border-right: var(--hexagon-icon-edges-width) solid transparent;
}
</style>