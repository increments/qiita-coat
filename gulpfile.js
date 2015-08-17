var gulp = require('gulp');
var path = require('path');
var sass = require('gulp-sass');
var uglify = require('gulp-uglify');
var webpack = require('webpack-stream');

gulp.task(
  'minify',
  function () {
    gulp.src('assets/javascripts/application.js')
      .pipe(
        webpack({
          output: {
            filename: 'application.js'
          },
          resolve: {
            root: [
              path.join(__dirname, "bower_components")
            ]
          }
        })
      )
      .pipe(uglify())
      .pipe(gulp.dest('public/javascripts'));
  }
);

gulp.task(
  'sass',
  function () {
    gulp.src('assets/stylesheets/application.scss')
      .pipe(sass().on('error', sass.logError))
      .pipe(gulp.dest('public/stylesheets'));
  }
);

gulp.task('default', ['minify', 'sass']);
