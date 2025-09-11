<script lang="ts">
	import { page } from '$app/state';
	import DarkModeToggle from '../components/DarkModeToggle.svelte';
</script>

<div class="justify-items-center justify-self-center-safe p-4 prose dark:prose-invert">
	<h1>{page.status} {page.error!!.message}</h1>
	<p class="text-lg">Oh no! Something went wrong.</p>
    <p class="lead">Broken link? <a href="mailto:bart@omeduostuurcentenneef.nl" rel="nofollow">Send me an email</a></p>
</div>
<DarkModeToggle visible={false} />
