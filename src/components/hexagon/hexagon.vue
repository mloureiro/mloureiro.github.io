<template>
	<div class="hexagon __wrapper">
		<div class="hexagon __content">
			<slot></slot>
		</div>

		<svg class="hexagon __svg" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" width="600" height="600" viewBox="0 0 600 600" xml:space="preserve">
			<desc>Hexagon icon</desc>
			<g transform="matrix(1 0 0 1 300 300)">
				<rect
					style="stroke: none; fill: none; opacity: 1;"
					vector-effect="non-scaling-stroke"
					x="-300" y="-300" rx="0" ry="0"
					width="600"
					height="600"
				/>
			</g>
			<g transform="matrix(0 7.72 -7.72 0 300 300)">
				<polygon
					style="opacity: 1;"
					vector-effect="non-scaling-stroke"
					points="-18.54,32.11 -37.08,0 -18.54,-32.11 18.54,-32.11 37.08,0 18.54,32.11 "
				/>
			</g>
		</svg>
	</div>
</template>

<style scoped>
.hexagon.__wrapper {
	--color: var(--c-primary-bg);
	position: relative;
}
.hexagon.__svg {
	width: 4rem;
	height: 4rem;
	fill: none;
	stroke: var(--c-primary-bg);
	stroke-width: var(--b-width-medium);
}
.hexagon.__content {
	position: absolute;
	width: 3rem;
	height: 3rem;
	top: 0.5rem;
	left: 0.5rem;
}
.hexagon.__svg:hover,
.hexagon.__content:hover + .hexagon.__svg {
	stroke: var(--color);
	fill: var(--color);
}
</style>