<template>
	<div class="hexagon-row">
		<slot />
	</div>
</template>

<style scoped>
.hexagon-wrapper > .hexagon-row {
	--offset: 0rem;
	display: flex;
	margin-left: calc(4 * var(--offset));
}
.hexagon-wrapper > .hexagon-row:nth-of-type(even) {
	margin-left: calc(2rem + (4 * var(--offset)));
	margin-top: -1rem;
}
</style>