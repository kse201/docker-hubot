'use strict'
var $, files, gulp

gulp = require('gulp')

$ = (require('gulp-load-plugins'))({
  lazy: false
})

files = ['./gulpfile.js', './scripts/**/*.js']

gulp.task('lint', () => {
  return gulp.src(files).pipe($.eslint()).pipe($.eslint.format())
})

gulp.task('watch', ['test'], () => {
  return gulp.watch(files, ['test'])
})

gulp.task('default', ['test'])

gulp.task('test', ['lint'])
