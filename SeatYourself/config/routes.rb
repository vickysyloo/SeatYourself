Rails.application.routes.draw do

	root "restaurants#index"

  resources :sessions, only: [:new, :create, :destroy]

	resources :restaurants do
		resources :reservations
    resources :reviews, only: [:show, :create, :destroy]
	end

	resources :users

end
