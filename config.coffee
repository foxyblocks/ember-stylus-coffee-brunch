fs   = require 'fs'
path = require 'path'

exports.config =
  files:
    javascripts:
      defaultExtension: 'coffee'
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor\/scripts/
      order:
        before: [
          'vendor/scripts/console-helper.js'
          'vendor/scripts/jquery.js'
          'vendor/scripts/bootstrap.js'
          'vendor/scripts/handlebars.js'
          'vendor/scripts/ember.js'
          'vendor/scripts/ember-data.js'
        ]
    stylesheets:
      defaultExtension: 'styl'
      joinTo:
        'css/style.css': /^(app|vendor)/
      order:
        before: [
          'vendor/styles/bootstrap.css'
          'vendor/styles/bootstrap-responsive.css'
        ]
    templates:
      precompile: true
      defaultExtension: 'hbs'
      joinTo: 'js/templates.js' : /^app/
      paths:
        jquery: 'vendor/scripts/jquery.js'
        handlebars: 'vendor/scripts/handlebars.js'
        ember: 'vendor/scripts/ember.js'
  server:
    port: 1337
    base: '/'
    run: yes