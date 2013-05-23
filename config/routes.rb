Backbone::Application.routes.draw do
	resources :users, :only => [:index, :show]

  root :to => 'home#index'
end
