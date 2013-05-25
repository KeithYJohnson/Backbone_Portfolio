class Project < ActiveRecord::Base
  attr_accessible :body, :title, :url, :user_id, :skills_attributes

  belongs_to :user

  accepts_nested_attributes_for :skills
  # This lets us do associated method calls on skills, building assoiciations
  # Need to define this in our data
  # skills_attributes needs to be created on the front end in backbone
  # because its a parameter, and will be passed by backbone to rails, it needs to be added
  #  to attr_accessible, :

end
