<script lang="ts">
  import { afterUpdate, onMount } from "svelte";
  import Header from "./lib/Header.svelte";
    import MenuCard from "./lib/MenuCard.svelte";
    import RecipeCard from "./lib/RecipeCard.svelte";

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
<main class="d-flex flex-column text-center align-content-center align-items-center mt-3">
  {#if page === 0}
  <div class="container">

  </div>
  {:else if page === 1}
  <div>
    <h4 class="pt-4" data-key="mealdeal">Meal Deal: fwefubifbewkjfbnkejwn</h4>

    <h1 class="p-3" data-key="main-dish">Dish 1</h1>
    <div class="flex-fill flex-column d-flex">
      <div class="container">
        <div class="row">
          <MenuCard title_key="soup1" desc_key="" btn_key="select" img_src="imgs/noodle.jpg"/>
          <MenuCard title_key="soup2" desc_key="" btn_key="select" img_src="imgs/egg.jpg"/>
        </div>
      </div>
    </div>

    <h1 class="p-3" data-key="sides">Dish 1</h1>
    <div class="flex-fill flex-column d-flex">
      <div class="container">
        <div class="row">
          <MenuCard title_key="bun" desc_key="" btn_key="select" img_src="imgs/baozi.jpg"/>
          <MenuCard title_key="vbun" desc_key="" btn_key="select" img_src="imgs/vbaozi.jpg"/>
          <MenuCard title_key="dough" desc_key="" btn_key="select" img_src="imgs/youtiao-14.jpg"/>
          <MenuCard title_key="rice" desc_key="" btn_key="select" img_src="imgs/rice.jpg"/>
        </div>
      </div>
    </div>

    <h1 class="p-3" data-key="drinks">Dish 1</h1>
    <div class="flex-fill flex-column d-flex">
      <div class="container">
        <div class="row">
          <MenuCard title_key="water" desc_key="" btn_key="select" img_src="imgs/water.png"/>
          <MenuCard title_key="tea" desc_key="" btn_key="select" img_src="imgs/tea.jpg"/>
          <MenuCard title_key="coffee" desc_key="" btn_key="select" img_src="imgs/coffee.png"/>
        </div>
      </div>
    </div>
  </div>
  {:else if page === 2}
  <div>
    <h1 class="p-3" data-key="main-dish">Dish 1</h1>
    <div class="flex-fill flex-column d-flex">
      <div class="container">
        <div class="row">
          <RecipeCard title_key="soup1" img_src="imgs/noodle.jpg" url="https://www.bbcgoodfood.com/recipes/crossing-the-bridge-noodles"/>
          <RecipeCard title_key="soup2" img_src="imgs/egg.jpg" url="https://thewoksoflife.com/egg-drop-soup/ "/>
        </div>
      </div>
    </div>

    <h1 class="p-3" data-key="sides">Dish 1</h1>
    <div class="flex-fill flex-column d-flex">
      <div class="container">
        <div class="row">
          <RecipeCard title_key="bun" img_src="imgs/baozi.jpg" url="https://www.delish.com/cooking/recipe-ideas/a33516689/steamed-buns-baozi-recipe/"/>
          <RecipeCard title_key="vbun" img_src="imgs/vbaozi.jpg" url="https://www.aheadofthyme.com/shanghai-style-vegetarian-steamed-buns/ "/>
          <RecipeCard title_key="dough" img_src="imgs/youtiao-14.jpg" url="https://thewoksoflife.com/youtiao-recipe/"/>
        </div>
      </div>
    </div>

  
  </div>
  {:else}
  <h1>Fatal Error</h1>
  {/if}
</main>
<div class="container">
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"></use></svg>
      </a>
      <span class="mb-3 mb-md-0 text-muted">© 2022 Company, Inc</span>
    </div>

    <ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
      <li class="ms-3"><a class="text-muted" href={"#"}><svg class="bi" width="24" height="24"><use xlink:href="#twitter"></use></svg></a></li>
    </ul>
  </footer>
</div>

<style lang="scss">
</style>
