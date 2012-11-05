# Ember+Stylus+Coffee+Brunch

My [Brunch](http://brunch.io) skeleton for [Ember.js](http://www.emberjs.com) apps. 

Not using [brunch](http://brunch.io)? It's the shit.

I made this for myself, it's what I use on a regular basis and will generally use or include the latest versions of:

* brunch
* coffee-script
* stylus
* bootstrap
* lodash
* jQuery
* ember.js
* ember-data
* handlebars.js

Notes:

I keep controllers and views together in the same file in the `app/views` directory.

Templates are pre-compiled with a Brunch plug-in I made that uses JSDOM and the actual Ember, jQuery and Handlebars files from the app's `vendor/scripts` directory-- so it's always precompiling with the same version(s) being used in the app.

The config uses `server.coffee` for the `brunch watch` server which functions more or less exactly like the default but having the custom server makes it easy to drop in socket.io when I want to use it.