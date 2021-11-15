<template>
	<div class="profile-picture __wrapper">
		<img
			src="/assets/profile-picture.jpeg"
			class="profile-picture __img"
		/>
	</div>
</template>

<style scoped>
.profile-picture.__wrapper {
	display: inline-flex;
	overflow: hidden;
	padding: var(--sp-xs);
	border: var(--b-width-medium) solid var(--c-primary-bg);
	border-radius: 100%;
}
.profile-picture.__img {
	max-width: 100px;
	max-height: 100px;
	border-radius: 100%;
	background-color: var(--c-primary-bg);
}
</style>
