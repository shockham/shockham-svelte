<script>
    import Title from './Title.svelte';
    import Project from './Project.svelte';

    let projects = [
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
        {
            title: 'infuse',
            desc: 'Minamalist wasm based webgl renderer',
            href: "https://github.com/shockham/infuse"
        },
        {
            title: 'efferve',
            desc: 'Effervescent ray march sketch',
            href: "https://efferve.shockham.now.sh/",
            img: "https://s3-eu-central-1.amazonaws.com/merveilles/media_attachments/files/000/251/573/original/d91f2734645018db.png",
        },
        {
            title: 'effuse',
            desc: 'Drippy ray march sketch',
            href: "https://effuse.shockham.now.sh/",
            img: "https://s3-eu-central-1.amazonaws.com/merveilles/media_attachments/files/000/252/052/original/e4a48e192d95c07e.png",
        },
        {
            title: 'botanea',
            desc: 'Botantical ray march sketch',
            href: "https://botanea.shockham.now.sh/",
            img: "https://s3-eu-central-1.amazonaws.com/merveilles/media_attachments/files/000/383/565/original/64bfce63f89209e2.png",
        },
        {
            title: 'rhombei',
            desc: 'Rhombus ray march sketch',
            href: "https://rhombei.shockham.now.sh/" ,
            img: "https://s3-eu-central-1.amazonaws.com/merveilles/media_attachments/files/000/388/210/original/a9c2551e9be1b0f6.png",
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
