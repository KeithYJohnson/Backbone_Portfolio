app.models.User = Backbone.Model.extend({


	url: function() {
		return '/users/' +this.id;
	},

	initialize: function () {
		// Any time you create a new user.
		// This creates a project list of associated projects.
		// essentially a has many r'ship. on the SERVER
		this.projects = new app.collections.ProjectList();
		this.projects.url = '/users/' + this.id +'/projects';
		this.projects.on("reset", this.updateCounts);

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