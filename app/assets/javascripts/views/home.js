app.views.Home = Backbone.View.extend({

  template: JST['templates/home'],

  events: {
    'click .user-link' : 'showUser'
  },

  render: function() {
    this.$el.html(this.template());

    // Find all the users in the system
    var users = new app.collections.UserList();
    var _this = this;
    users.fetch({
      success: function(users, response, options) {
        users.forEach(function(user) {
          // use .navigate
        _this.$el.find("#users").append("<li><a href='#' class='user-link' data-id='" + user.id + "'>" + user.full_name() + user.mission() + user.bio() +  "</a></li>");
        });
      }
    });

    // Add a <li> element containing a link to each profile page
    return this;
  },

  showUser: function() {
    event.preventDefault();
    var id = $(event.target).data("id");

    console.log(id);
    
    new app.Router().navigate('/users/' + id, {trigger: true});
    // must render somethings
    // render it in a way to attached the correct 

  }

});