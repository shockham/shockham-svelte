<script>
    export let title;
    export let desc;
    export let href;
    export let img;
</script>

<style>
    a {
        background: #fff;
        color: #111;
        padding: 0 10px;
        transition: all 0.5s ease 0s;
        cursor: pointer;
        text-decoration: none;
    }
    a:hover {
        opacity: 0.7; 
    }
    img {
        width: 100%;
    }
</style>

<a {href} target="_blank">
    <h2>{title}</h2>
    <p>{desc}</p>
    {#if img}
        <img src="{img}" alt="{title}">
    {/if}
</a>
