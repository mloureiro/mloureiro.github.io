<template>
	<div class="profile-picture">
		<img
			src="/assets/profile-picture.png"
			class="profile-picture __img"
		/>
	</div>
</template>

<style scoped>
.profile-picture {
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
