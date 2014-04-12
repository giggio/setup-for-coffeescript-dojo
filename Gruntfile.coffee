module.exports = (grunt) ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'

    allFiles:
      expand: on
      cwd: ''
      src: ['**/*.coffee', '!gulpfile.coffee', '!node_modules/**']
      dest: ''
      ext: '.js'

    watch:
      allFiles:
        files: ['**/*.coffee', '!gulpfile.coffee', '!node_modules/**']
        tasks: ['mochaTest']
        options:
          livereload: off

    mochaTest:
      test:
        src: 'test/**/*.coffee'
        options:
          require: 'coffee-script/register'
          reporter: 'tap'
          ui: 'bdd'
          quiet: on
          captureFile: 'output.tap'

  grunt.loadNpmTasks 'grunt-mocha-test'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', [ 'mochaTest' ]
