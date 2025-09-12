<script>
	import Button from '$lib/components/ui/button/button.svelte';
	import DarkModeToggle from '../components/DarkModeToggle.svelte';

	import GitHubIcon from '@lucide/svelte/icons/github';
	import EmailIcon from '@lucide/svelte/icons/mail';
</script>

<main
	class="prose justify-self-center-safe p-2 py-12 prose-zinc md:prose-lg lg:prose-xl dark:prose-invert"
>
	<h1>Ome Duo stuur centen neef!</h1>

	<div class="flex gap-4 justify-self-center-safe">
		<a href="https://github.com/25huizengek1"
			><Button class="cursor-pointer" variant="outline"><GitHubIcon /></Button></a
		>
		<a href="mailto:bart@omeduostuurcentenneef.nl" rel="nofollow"
			><Button class="cursor-pointer" variant="outline"><EmailIcon /></Button></a
		>
	</div>

	<p class="lead">
		Hi, my name is Bart Oostveen. If you want to contact me, you should use one of the above
		links. Anyway, the rest of this page is Dutch nonsense. Enjoy!
	</p>

	<p>Hoe dan ook, op deze server (of nou ja server, gare Hetzner box) staan een aantal services:</p>
	<ul class="">
		<li>
			<a href="https://fs.omeduostuurcentenneef.nl">Omeduoparty</a>, oftewel, een
			<a href="https://github.com/9001/copyparty/">copyparty</a>
			fileserver met allerlei rommel
		</li>
		<li><a href="https://discourse.omeduostuurcentenneef.nl">Discourse</a>, want ja idk</li>
		<li><a href="https://search.vitune.app/">NüschtOS Search</a>, want handig</li>
		<li>
			<a href="https://headscale.vitune.app/">Headscale</a>, maar daar mag je lekker niet op haha
		</li>
		<li>
			<a href="https://webmail.omeduostuurcentenneef.nl">Webmail</a> ofzo
		</li>
	</ul>

	<p>Ik ga waarschijnlijk binnenkort deze rotzooi uitbreiden, maar hey</p>
	<p>
		<i
			>Oja, en deze server heeft een aantal vitune.app domeinen, want <a
				href="https://github.com/25huizengek1/ViTune">ViTune</a
			> is een oud project waarvoor sommige mensen mij nog steeds proberen te bereiken op development@vitune.app</i
		>
	</p>

	<p>Mocht je nu nog denken, wie is deze staatsmongool die deze boel in de lucht houdt? Nou...</p>
	<a href="https://github.com/25huizengek1"
		><Button variant="outline" class="cursor-pointer"><GitHubIcon />Bart Oostveen</Button></a
	>
</main>

<div class="fixed top-0 justify-self-end p-4">
	<DarkModeToggle />
</div>
