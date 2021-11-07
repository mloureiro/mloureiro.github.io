<template>
	<button
		:class="variation"
		class="button"
		type="button"
	>
		<slot />
	</button>
</template>

<script>

export default {
	props: {
		primary: { type: Boolean, default: false },
		secondary: { type: Boolean, default: false },
		success: { type: Boolean, default: false },
		danger: { type: Boolean, default: false },
		warning: { type: Boolean, default: false },
		info: { type: Boolean, default: false },
	},
	computed: {
		variation() {
			if (this.primary) return '--primary';
			if (this.secondary) return '--secondary';
			if (this.success) return '--success';
			if (this.danger) return '--danger';
			if (this.warning) return '--warning';
			return '--info';
		},
	},
};
</script>

<style>
.button {
	--button-padding-y: var(--sp-xs);
	--button-padding-x: var(--sp-m);
	border: none;
	border-radius: var(--b-r-l);
	padding: var(--button-padding-y) var(--button-padding-x);
	box-sizing: border-box;
	text-wrap: none;
}
.button:hover {
	cursor: pointer;
}
.button.--primary {
	color: var(--c-primary-fg);
	background-color: var(--c-primary-bg);
}
.button.--primary:hover { background-color: var(--c-primary-bg-hover) }
.button.--primary:active { background-color: var(--c-primary-bg-active) }
.button.--secondary {
	color: var(--c-secondary-fg);
	background-color: var(--c-secondary-bg);
}
.button.--secondary:hover { background-color: var(--c-secondary-bg-hover) }
.button.--secondary:active { background-color: var(--c-secondary-bg-active) }
.button.--success {
	color: var(--c-success-fg);
	background-color: var(--c-success-bg);
}
.button.--success:hover { background-color: var(--c-success-bg-hover) }
.button.--success:active { background-color: var(--c-success-bg-active) }
.button.--danger {
	color: var(--c-danger-fg);
	background-color: var(--c-danger-bg);
}
.button.--danger:hover { background-color: var(--c-danger-bg-hover) }
.button.--danger:active { background-color: var(--c-danger-bg-active) }
.button.--warning {
	color: var(--c-warning-fg);
	background-color: var(--c-warning-bg);
}
.button.--warning:hover { background-color: var(--c-warning-bg-hover) }
.button.--warning:active { background-color: var(--c-warning-bg-active) }
.button.--info {
	color: var(--c-info-fg);
	background-color: var(--c-info-bg);
	border: var(--b-standard-basic);
	padding:
		calc(var(--button-padding-y) - 1px)
		calc(var(--button-padding-x) - 1px);
}
.button.--info:hover { background-color: var(--c-info-bg-hover) }
.button.--info:active { background-color: var(--c-info-bg-active) }
</style>