class User < ActiveRecord::Base
  attr_accessible :bio, :first_name, :image_url, :last_name, :mission
end
