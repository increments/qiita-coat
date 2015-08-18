# qiita-coat
The UI components for Qiita.  
http://increments.github.io/qiita-coat/

## Install
```sh
# As a bower package
$ bower install increments/qiita-coat --save

# As a npm package
$ npm install increments/qiita-coat --save
```

## Usage
See files in [/scss](/scss) for more details.

```scss
// Import all files
@import "qiita-coat/scss/all";

// Or import individual files
@import "qiita-coat/scss/variables";
@import "qiita-coat/scss/mixins";
```

## Development
There are some npm tasks for developers.

### npm run setup
Set up your environment to develop this project.

```
$ npm run setup
```

### npm run build
Build JavaScripts and Stylesheets.

```
$ npm run build
```

### npm run start
Launch a development server on http://127.0.0.1:9292.

```
$ npm run start
```

### npm run watch
Start to watch changes of assets to automatically compile them.

```
$ npm run watch
```

### npm run build-pages
Build static files into ./build directory.

```
$ npm run build-pages
```

### npm run deploy-pages
Push static files in ./build directory for GitHub Pages.

```
$ npm run deploy-pages
```
