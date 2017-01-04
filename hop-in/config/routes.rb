Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'users#new'

	 resource :user
	 resources :vehicles do
		 resources :reservations
     resources :availabilities
	 end
	 resource :sessions, only: [:new, :create, :destroy]
end
