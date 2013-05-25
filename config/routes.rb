Backbone::Application.routes.draw do
	resources :users, :only => [:index, :show] do
		# All the CRUD actions, ONLY with the right user ide)
		resources :projects, :only =>  [:create, :update, :destroy, :index ] do
			end
	end


  root :to => 'home#index'
end
