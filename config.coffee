fs   = require 'fs'
path = require 'path'

exports.config =

  files:

    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^vendor\/scripts/

      order:
        before: [
          'vendor/scripts/console-helper.js'
          'vendor/scripts/jquery.js'
          'vendor/scripts/handlebars.js'
          'vendor/scripts/ember.js'
          'vendor/scripts/ember-data.js'
          'vendor/scripts/bootstrap.js'
        ]

    stylesheets:
      joinTo: 'css/style.css'

    templates:
      precompile: true
      defaultExtension: 'hbs'
      joinTo: 'js/templates.js' : /^app/

  server:
    port: 3333
    base: '/'
    run: yes