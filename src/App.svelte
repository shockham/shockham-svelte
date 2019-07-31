<script>
    import Title from './Title.svelte';
    import Project from './Project.svelte';

    let projects = [
        { title: 'caper', desc: 'Minamalist game framework', href: "https://github.com/shockham/caper"},
        { title: 'volition', desc: 'Minamalist input lib', href: "https://github.com/shockham/volition"},
        { title: 'impose', desc: 'Minamalist audio lib', href: "https://github.com/shockham/impose" },
        { title: 'efferve', desc: 'Effervescent ray march sketch', href: "https://efferve.shockham.now.sh/" },
        { title: 'effuse', desc: 'Drippy ray march sketch', href: "https://effuse.shockham.now.sh/" },
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
