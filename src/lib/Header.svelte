<script lang="ts">
    export let page: number;
    export let lang: string;
</script>

<header class="p-3 text-bg-dark border-bottom border-secondary">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
            <a on:click={() => page = 0} href={"#"} class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
            </a>

            <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                <li><a on:click={() => page = 0} href={"#"} class="nav-link px-2 text-secondary" data-key="home">aaaaaaa</a></li>
                <li><a on:click={() => page = 1} href={"#"} class="nav-link px-2 text-white" data-key="menu">Menu</a></li>
                <li><a on:click={() => page = 2} href={"#"} class="nav-link px-2 text-white" data-key="recipes">Recipes</a></li>
            </ul>

            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Language
                </button>
                <ul class="dropdown-menu dropdown-menu-dark mx-0 border-0 shadow w-220px">
                    <li>
                        <a on:click={() => lang = "cn"} class="dropdown-item d-flex gap-2 align-items-center" href={"#"}>
                            <img class="bi" src="imgs/cn-flag.png" alt="Chinese Flag" width="16" height="16"/>
                            简体中文
                        </a>
                    </li>
                    <li>
                        <a on:click={() => lang = "en"} class="dropdown-item d-flex gap-2 align-items-center" href={"#"}>
                            <img class="bi" src="imgs/hamburger.png" alt="Definitely American Flag" width="16" height="16"/>
                            English
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</header>
