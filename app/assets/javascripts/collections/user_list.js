app.collections.UserList = Backbone.Collection.extend({

  model: app.models.User,
  // tells backbone to go and retrieve info at this path
  url: 'http://localhost:3000/users'


});