app.models.User = Backbone.Model.extend({


	url: function() {
		return '/users/' +this.id;
	},

  full_name: function() {
    return this.attributes.first_name + " " + this.attributes.last_name;
  },

  mission: function() {
  	return this.attributes.mission;
  },	

  bio: function() {
  	return this.attributes.bio;
  }

});