Rails.application.routes.draw do

	root 'restaurants#index'

	resources :sessions, only: [:new, :create, :destroy]

	resources :restaurants do
		resources :reviews, only: [:show, :create, :destroy]
		resources :reservations
	end

	resources :users

end
