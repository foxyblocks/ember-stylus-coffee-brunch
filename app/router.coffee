App.Router = Em.Router.extend
  enableLogging: true

  root: Em.Route.extend

    home: Em.Route.extend
      route: '/'
      connectOutlets: (router, context) ->
        router.get('applicationController').connectOutlet 'navbar', 'navBar'
        router.get('applicationController').connectOutlet 'sidebar', 'sideBar'
        router.get('applicationController').connectOutlet 'main', 'home'