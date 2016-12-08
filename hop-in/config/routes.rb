Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'users#index'

	 resource :users
	 resources :vehicles do
		 resource  :reservations
	 end
	 resource :sessions, only: [:new, :create, :destroy]
end
