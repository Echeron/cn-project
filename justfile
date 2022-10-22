default:
    just -l

# Initialize the project
init:
    yarn install

# View the project in dev mode
view:
    open "http://localhost:5173/"
    yarn dev

# Preview what the final website will look like
preview:
    rm -rf dist/
    open "http://localhost:4173/"
    yarn build
    yarn preview

# Build the project and push the new version to the origin
push:
    rm -rf dist/
    yarn build
    mv dist docs
    git add .
    git commit -m "build"
    git push origin main
