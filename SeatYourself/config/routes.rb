Rails.application.routes.draw do
	root "restaurants#index"

  resources :sessions, only: [:new, :create, :destroy]

	resources :restaurants do
		resources :reservations
	end

	resources :users

end
