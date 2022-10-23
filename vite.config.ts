import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'
// import path from 'path'

// https://vitejs.dev/config/
export default defineConfig({
    base: "/cn-project/",
    plugins: [svelte()],
    // resolve: {
    //     alias: {
    //         $bootstrap: path.resolve("./node_modules/bootstrap/scss")
    //     }
    // }
})
