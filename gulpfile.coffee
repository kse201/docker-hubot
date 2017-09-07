'use strict'

gulp = require 'gulp'
$ = (require 'gulp-load-plugins') lazy: false

files = ['./gulpfile.coffee', './scripts/**/*.coffee']

gulp.task 'lint', ->
  gulp.src files
    .pipe $.coffeelint('./coffeelint.json')
    .pipe $.coffeelint.reporter()

gulp.task 'watch', ['test'], ->
  gulp.watch files, ['test']

gulp.task 'default', ['test']
gulp.task 'test', ['lint']
