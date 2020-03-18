<script>
    import Title from './Title.svelte';
    import Project from './Project.svelte';

    let projects = [
        {
            title: 'flicke',
            desc: 'Initially intended to be a flickery fire ray march sketch',
            href: "https://flicke.now.sh/",
        },
        {
            title: 'weive',
            desc: 'Rounded cube ray march sketch',
            href: "https://weive.shockham.now.sh/",
        },
        {
            title: 'efferve',
            desc: 'Effervescent ray march sketch',
            href: "https://efferve.shockham.now.sh/",
        },
        {
            title: 'effuse',
            desc: 'Drippy ray march sketch',
            href: "https://effuse.shockham.now.sh/",
        },
        {
            title: 'botanea',
            desc: 'Botantical ray march sketch',
            href: "https://botanea.shockham.now.sh/",
        },
        {
            title: 'rhombei',
            desc: 'Rhombus ray march sketch',
            href: "https://rhombei.shockham.now.sh/" ,
        },
        {
            title: 'noiser',
            desc: 'FM Synth + step sequencer',
            href: 'https://noiser.shockham.now.sh/',
        },
        {
            title: 'infuse',
            desc: 'Minamalist wasm based webgl renderer',
            href: "https://github.com/shockham/infuse"
        },
        {
            title: 'caper',
            desc: 'Minamalist game framework',
            href: "https://github.com/shockham/caper",
        },
        {
            title: 'volition',
            desc: 'Minamalist input lib',
            href: "https://github.com/shockham/volition"
        },
        {
            title: 'impose',
            desc: 'Minamalist audio lib',
            href: "https://github.com/shockham/impose"
        },
    ];
</script>

<style>
    div {
        width: 100%;
        display: grid;
        padding: 20px 0;
        grid-gap: 20px;
        grid-template-columns: repeat(4, 1fr);
        grid-auto-flow: row dense;
    }
    @media only screen and (max-width: 640px) {
        div {
            grid-template-columns: repeat(1, 1fr);
        }
    }
</style>

<Title/>

<div>
    {#each projects as project}
        <Project {...project} />
    {/each}
</div>
