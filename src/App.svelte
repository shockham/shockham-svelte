<script>
    import Title from './Title.svelte';
    import Project from './Project.svelte';

    let projects = [
        { title: 'caper', desc: 'Minamalist game framework', href: "https://github.com/shockham/caper"},
        { title: 'volition', desc: 'Minamalist input lib', href: "https://github.com/shockham/volition"},
        { title: 'impose', desc: 'Minamalist audio lib', href: "https://github.com/shockham/impose" },
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
</style>

<Title/>

<div>
    {#each projects as project}
        <Project {...project} />
    {/each}
</div>
