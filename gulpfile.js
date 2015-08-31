var ghPages = require('gulp-gh-pages');
var gulp = require('gulp');
var sass = require('gulp-sass');
var watch = require('gulp-watch');
var webpack = require('webpack-stream');

gulp.task('deploy-pages', function() {
  var options = {};
  if (process.env.GIT_ORIGIN) {
    options.remoteUrl = process.env.GIT_ORIGIN;
  }
  return gulp.src('./build/**/*')
    .pipe(ghPages(options));
});

gulp.task(
  'sass',
  function () {
    gulp.src('assets/stylesheets/application.scss')
      .pipe(sass().on('error', sass.logError))
      .pipe(gulp.dest('public/stylesheets'));
  }
);

gulp.task(
  'watch',
  function () {
    gulp.watch('{assets,scss}/**/*', ['sass']);
  }
);

gulp.task('default', ['sass']);
