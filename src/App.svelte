<script lang="ts">
  import { afterUpdate, onMount } from "svelte";
  import Header from "./lib/Header.svelte";

  let page: number = 0;
  let localization: any = undefined;
  let lang = "en";

  onMount(async() => {
    const request = await fetch("localization.json");
    if(request.ok) {
      const json = await request.json();
      localization = json["localization"];
      locale();
    }
    else {
      page = Number.MAX_VALUE;
    }
  });

  afterUpdate(() => {
    if(localization)
      locale();
  });

  function locale(locale: string | null = null) {
    console.log("Run locale")

    if(locale)
      lang = locale;

    // Load localization
    const elements = document.querySelectorAll("[data-key]");
    elements.forEach((e) => {
      const key = e.attributes.getNamedItem("data-key").value;
      e.innerHTML = localization[key][lang];
    });
  }
</script>

<Header bind:page bind:lang></Header>
<main class="d-flex flex-column align-content-center align-items-center mt-3">
  {#if page === 0}
    <h1 data-key="test-1"></h1>
  {:else if page === 1}
    <h1 data-key="test-2"></h1>
  {:else}
    <h1>Fatal Error</h1>
  {/if}
</main>

<style lang="scss">
</style>
