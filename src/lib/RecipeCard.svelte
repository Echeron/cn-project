<script lang="ts">
    export let title_key: string;
    export let img_src: string;
    export let url: string;
</script>

<div class="col-sm-4 pb-4" style="margin-left: auto; margin-right: auto;">
<div class="card bg-dark border-secondary d-flex h-100 text-center">
    <img src={img_src} class="img-card-top pt-2 img-thumbnail" alt="" style="object-fit: contain; max-height: 10rem;">
    <div class="card-body">
      <h5 class="card-title" data-key={title_key}>Card title</h5>
      <a href={url} rel="noreferrer" target="_blank" class="btn btn-primary" data-key="r-btn">Go somewhere</a>
    </div>
  </div>
</div>