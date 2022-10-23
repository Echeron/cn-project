<script lang="ts">
    export let title_key: string;
    export let desc_key: string;
    export let btn_key: string;
    export let img_src: string;
</script>

<div class="col-sm-4 pb-4" style="margin-left: auto; margin-right: auto;">
<div class="card bg-dark border-secondary d-flex h-100 text-center">
    <img src={img_src} class="img-card-top pt-2 img-thumbnail" alt="" style="object-fit: contain; max-height: 10rem;">
    <div class="card-body">
      <h5 class="card-title" data-key={title_key}>Card title</h5>
      <p class="card-text" data-key={desc_key}>Some quick example text to build on the card title and make up the bulk of the card's content.</p>
      <a href={"#"} class="btn btn-primary" data-key={btn_key}>Go somewhere</a>
    </div>
  </div>
</div>