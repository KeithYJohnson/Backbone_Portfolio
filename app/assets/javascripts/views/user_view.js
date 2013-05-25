app.views.UserView = Backbone.View.extend({

  tagName: 'div',
  id: 'bio',
  template: JST['templates/user'],
  render: function() {
    var _this= this;
    // Get some HTML from somewhere
    var user = this.template({user: this.model });

    // console.log(this.model);
    console.log(user);
    console.log(this.model);
    user_info = this.model;
    // Append it to this view's div#bio element
    this.$el.html(user);

    return this;
  }

});