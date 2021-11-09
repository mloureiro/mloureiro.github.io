<template>
	<div
		:class="[isLightTheme ? '--light' : '--dark']"
		class="theme"
	>

		<div class="theme-toggle __wrapper">
			<span class="theme-toggle __content">
				<label class="theme-toggle __label">
					<input v-model="isLightTheme" type="checkbox" class="theme-toggle __checkbox" />
					<span class="theme-toggle __toggle"></span>
					<span class="theme-toggle __names">
						<span class="theme-toggle __light">
							<img src="/icons/icon-sun.svg" alt="sun" class="theme-toggle __icon">
						</span>
						<span class="theme-toggle __dark">
							<img src="/icons/icon-moon.svg" alt="moon" class="theme-toggle __icon">
						</span>
					</span>
				</label>
			</span>
		</div>

		<slot />
	</div>
</template>

<script>
export default {
	data: () => ({
		isLightTheme: false,
	}),
}
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=B612+Mono:ital,wght@0,400;0,700;1,400&family=Dosis:wght@400;600;700&family=Pacifico&display=swap');

:root {
	/* color palette
			regular:   https://coolors.co/2b2d42-8d99ae-edf2f4-f7ec59-e71d36-f08700-157145-44cf6c-ffba08-f8f9fa
			light +30: https://coolors.co/5a5e8a-b0b8c7-f2f5f7-faf28b-ee6171-ffad42-26d07e-7cdd98-ffce54-fbfbfc
			dark -15:  https://coolors.co/1e1f2d-5c6a81-93b1bd-e1d30b-a51123-a85f00-0e4e2f-289948-ba8500-a1afbd
	*/
	--palette-space-cadet: #2b2d42;
	--palette-space-cadet-light: #5a5e8a;
	--palette-space-cadet-dark: #1e1f2d;
	--palette-manatee: #8d99ae;
	--palette-manatee-light: #b0b8c7;
	--palette-manatee-dark: #5c6a81;
	--palette-alice-blue: #edf2f4;
	--palette-alice-blue-light: #f2f5f7;
	--palette-alice-blue-dark: #93b1bd;
	--palette-corn: #f7ec59;
	--palette-corn-light: #faf28b;
	--palette-corn-dark: #e1d30b;
	--palette-rose-madder: #e71d36;
	--palette-rose-madder-light: #ee6171;
	--palette-rose-madder-dark: #a51123;
	--palette-tangerine: #f08700;
	--palette-tangerine-light: #ffad42;
	--palette-tangerine-dark: #a85f00;
	--palette-dark-spring-green: #157145;
	--palette-dark-spring-green-light: #26d07e;
	--palette-dark-spring-green-dark: #0e4e2f;
	--palette-emerald: #44cf6c;
	--palette-emerald-light: #7cdd98;
	--palette-emerald-dark: #289948;
	--palette-selective-yellow: #ffba08;
	--palette-selective-yellow-light: #ffce54;
	--palette-selective-yellow-dark: #ba8500;
	--palette-light-gray: #cdd4dc;
	--palette-light-gray-light: #f8f9fa;
	--palette-light-gray-dark: #a1afbd;
	--palette-light-grayish-blue: #ccccdd;

	/* fonts: https://fonts.googleapis.com/css2?family=B612+Mono:ital,wght@0,400;0,700;1,400&family=Dosis:wght@400;600;700&family=Pacifico&display=swap */
	--b612mono: 'B612 Mono', monospace;
	--dosis: 'Dosis', sans-serif;
	--pacifico: 'Pacifico', cursive;

	/*** theme ***/
	--f-cursive: var(--pacifico);
	--f-sans: var(--dosis);
	--f-mono: var(--b612mono);
	--f-w-regular: 400;
	--f-w-medium: 600;
	--f-w-bold: 700;
	--f-s-xs: 0.65rem;
	--f-s-s: 0.8rem;
	--f-s-m: 1rem;
	--f-s-l: 1.2rem;
	--f-s-xl: 1.6rem;
	--f-s-xxl: 2rem;

	/* spacings */
	--sp-xxs: 2px;
	--sp-xs: 4px;
	--sp-s: 8px;
	--sp-m: 16px;
	--sp-l: 24px;
	--sp-xl: 32px;
	--sp-xxl: 40px;

	/* borders */
	--b-color: var(--palette-light-grayish-blue);
	--b-style: solid;
	--b-width-regular: 1px;
	--b-width-medium: 2px;
	--b-width-bold: 4px;
	--b-r-xs: 2px;
	--b-r-s: 4px;
	--b-r-m: 8px;
	--b-r-l: 16px;

	/*** base styles ***/
	font-family: var(--f-sans);
	font-size: 16px;
}

.theme {
	min-width: 100vw;
	min-height: 100vh;
	/* workaround for having the pages with full height (without extra scrollbar)
	 * astro adds wrapper templates that do not have styles and I haven't figured it
	 * out yet if it is possible */
	--header-height: 4rem;
}

.theme.--light {
	--c-text: var(--palette-space-cadet);
	--c-text-light: var(--palette-space-cadet-light);
	--c-text-dark: var(--palette-space-cadet-dark);
	--c-background: var(--palette-alice-blue);
	--c-text-inverted: var(--palette-alice-blue);
	--c-background-inverted: var(--palette-tangerine);

	--b-color: var(--palette-light-grayish-blue);
	--b-standard-basic: var(--b-width-regular) var(--b-style) var(--b-color);

	--c-primary-fg: var(--palette-alice-blue);
	--c-primary-bg: var(--palette-tangerine);
	--c-primary-bg-hover: var(--palette-tangerine-light);
	--c-primary-bg-active: var(--palette-tangerine-dark);
	--c-secondary-fg: var(--palette-alice-blue);
	--c-secondary-bg: var(--palette-dark-spring-green);
	--c-secondary-bg-hover: var(--palette-dark-spring-green-light);
	--c-secondary-bg-active: var(--palette-dark-spring-green-dark);
	--c-success-fg: var(--palette-space-cadet);
	--c-success-bg: var(--palette-emerald);
	--c-success-bg-hover: var(--palette-emerald-light);
	--c-success-bg-active: var(--palette-emerald-dark);
	--c-danger-fg: var(--palette-alice-blue);
	--c-danger-bg: var(--palette-rose-madder);
	--c-danger-bg-hover: var(--palette-rose-madder-light);
	--c-danger-bg-active: var(--palette-rose-madder-dark);
	--c-warning-fg: var(--palette-space-cadet);
	--c-warning-bg: var(--palette-selective-yellow);
	--c-warning-bg-hover: var(--palette-selective-yellow-light);
	--c-warning-bg-active: var(--palette-selective-yellow-dark);
	--c-info-fg: var(--palette-space-cadet);
	--c-info-bg: var(--palette-light-gray);
	--c-info-bg-hover: var(--palette-light-gray-light);
	--c-info-bg-active: var(--palette-light-gray-dark);

	/*** base styles ***/
	color: var(--c-text);
	background-color: var(--c-background);
}

.theme.--dark {
	--c-text: var(--palette-alice-blue);
	--c-text-light: var(--palette-alice-blue-light);
	--c-text-dark: var(--palette-alice-blue-dark);
	--c-background: var(--palette-space-cadet);
	--c-text-inverted: var(--palette-tangerine);
	--c-background-inverted: var(--palette-alice-blue);

	--b-color: var(--palette-light-grayish-blue);
	--b-standard-basic: var(--b-width-regular) var(--b-style) var(--b-color);

	--c-primary-fg: var(--palette-alice-blue);
	--c-primary-bg: var(--palette-tangerine);
	--c-primary-bg-hover: var(--palette-tangerine-light);
	--c-primary-bg-active: var(--palette-tangerine-dark);
	--c-secondary-fg: var(--palette-alice-blue);
	--c-secondary-bg: var(--palette-dark-spring-green);
	--c-secondary-bg-hover: var(--palette-dark-spring-green-light);
	--c-secondary-bg-active: var(--palette-dark-spring-green-dark);
	--c-success-fg: var(--palette-space-cadet);
	--c-success-bg: var(--palette-emerald);
	--c-success-bg-hover: var(--palette-emerald-light);
	--c-success-bg-active: var(--palette-emerald-dark);
	--c-danger-fg: var(--palette-alice-blue);
	--c-danger-bg: var(--palette-rose-madder);
	--c-danger-bg-hover: var(--palette-rose-madder-light);
	--c-danger-bg-active: var(--palette-rose-madder-dark);
	--c-warning-fg: var(--palette-space-cadet);
	--c-warning-bg: var(--palette-selective-yellow);
	--c-warning-bg-hover: var(--palette-selective-yellow-light);
	--c-warning-bg-active: var(--palette-selective-yellow-dark);
	--c-info-fg: var(--palette-space-cadet);
	--c-info-bg: var(--palette-light-gray);
	--c-info-bg-hover: var(--palette-light-gray-light);
	--c-info-bg-active: var(--palette-light-gray-dark);

	/*** base styles ***/
	color: var(--c-text);
	background-color: var(--c-background);
}

/** toggle **/
.theme-toggle.__wrapper {
	display: flex;
	justify-content: right;
	height: var(--header-height);
}

.theme-toggle.__content {
	--toggle-height: 1.5rem;
	--toggle-width: 2rem;
	display: flex;
	margin: var(--sp-m);
}

.theme-toggle.__label, .theme-toggle.__toggle {
	height: var(--toggle-height);
	border-radius: 100px;
}

.theme-toggle.__label {
	width: calc(2 * var(--toggle-width));
	background-color: rgba(0,0,0,.1);
	border-radius: 100px;
	position: relative;
	cursor: pointer;
}

.theme-toggle.__toggle {
	position: absolute;
	width: 50%;
	background-color: var(--palette-alice-blue);
	box-shadow: 0 2px 15px rgba(0,0,0,.15);
	transition: transform .3s cubic-bezier(0.25, 0.46, 0.45, 0.94);
}

.theme-toggle.__names {
	font-size: var(--f-s-s);
	font-weight: var(--f-w-medium);
	width: calc(2 * var(--toggle-width));
	padding:
		calc(0.10 * var(--toggle-height))
		calc(0.20 * var(--toggle-width));
	position: absolute;
	display: flex;
	justify-content: space-between;
	user-select: none;
}

.theme-toggle.__icon {
	width: calc(0.8 * var(--toggle-height))
}

.theme-toggle.__checkbox {
	display: none;
}

.theme.--dark .theme-toggle.__toggle{
	transform: translateX(100%);
	background-color: var(--palette-space-cadet-light);
}

.theme-toggle.__dark,
.theme.--dark .theme-toggle.__light {
	opacity: .5;
}

.theme.--dark .theme-toggle.__dark { opacity: 1; }
</style>