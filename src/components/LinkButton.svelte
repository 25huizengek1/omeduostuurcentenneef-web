<script lang="ts">
	import Button from '$lib/components/ui/button/button.svelte';

	let { icon = undefined, href = '', children = undefined } = $props();
</script>

<a {href}>
	<Button variant="outline" class="cursor-pointer">
		{@render icon()}{@render children()}
	</Button>
</a>
