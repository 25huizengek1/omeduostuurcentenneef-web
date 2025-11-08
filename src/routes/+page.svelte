<script>
	import Button from '$lib/components/ui/button/button.svelte';
	import DarkModeToggle from '../components/DarkModeToggle.svelte';

	import GitHubIcon from '@lucide/svelte/icons/github';
	import EmailIcon from '@lucide/svelte/icons/mail';
	import FileIcon from '@lucide/svelte/icons/file';
	import EthernetPortIcon from '@lucide/svelte/icons/ethernet-port';
	import LinkButton from '../components/LinkButton.svelte';
</script>

<main
	class="prose justify-self-center-safe p-2 py-12 prose-zinc md:prose-lg lg:prose-xl dark:prose-invert"
>
	<h1 class="justify-self-center">Bart Oostveen</h1>

	<div class="flex gap-4 justify-self-center-safe">
		<a href="https://github.com/25huizengek1"
			><Button class="cursor-pointer" variant="outline"><GitHubIcon /></Button></a
		>
		<a href="mailto:bart@bartoostveen.nl" rel="nofollow"
			><Button class="cursor-pointer" variant="outline"><EmailIcon /></Button></a
		>
	</div>

	<p class="lead">
		Hi, my name is Bart Oostveen. If you want to contact me, you should use one of the above links.
		Anyway, the rest of this page is Dutch nonsense. Enjoy!
	</p>

	<p>Hoe dan ook, op deze server (of nou ja server, gare Hetzner box) staan een aantal services:</p>

	<div class="flex flex-wrap justify-center gap-2">
		<LinkButton href="https://fs.omeduostuurcentenneef.nl">
			{#snippet icon()}
				<FileIcon />
			{/snippet}
			Omeduoparty
		</LinkButton>
		<LinkButton href="https://headscale.vitune.app">
			{#snippet icon()}
				<EthernetPortIcon />
			{/snippet}
			Headscale
		</LinkButton>
		<LinkButton href="https://webmail.bartoostveen.nl">
			{#snippet icon()}
				<EmailIcon />
			{/snippet}
			Webmail
		</LinkButton>
	</div>

	<p>
		<i
			>Oja, en deze server heeft een aantal vitune.app domeinen, want <a
				href="https://github.com/25huizengek1/ViTune">ViTune</a
			> is een oud project waarvoor sommige mensen mij nog steeds proberen te bereiken op development@vitune.app</i
		>
	</p>

	<p>Mocht je nu nog denken, wie is deze staatsmongool die deze boel in de lucht houdt? Nou...</p>
	<LinkButton href="https://github.com/25huizengek1">
		{#snippet icon()}
			<GitHubIcon />
		{/snippet}
		Bart Oostveen
	</LinkButton>
</main>

<div class="fixed top-0 justify-self-end p-4">
	<DarkModeToggle />
</div>
