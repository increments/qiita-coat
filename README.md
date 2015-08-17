# qiita-coat
The UI components for Qiita.

## Install
```
$ bower install qiita-coat --save
```

## Usage
```scss
// Import all files
@import "qiita-coat/scss/all";

// Or import individual files
@import "qiita-coat/scss/variables";
@import "qiita-coat/scss/mixins";
```

## Development
### Set up
```
$ npm install
$ bundle install
```

### npm run build
Build JavaScripts and Stylesheets.

```
$ npm run build
```

### npm run server
Launch a development server on http://127.0.0.1:9292.

```
$ npm run server
```

### npm run rspec
Build files into ./build.

```
$ npm run rspec
```

### npm run deploy
Push ./build files to gh-pages branch.

```
$ npm run deploy
```
