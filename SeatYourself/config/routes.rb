Rails.application.routes.draw do

  resources :restaurants do
    resources :reservations
  end

  resources :users

end
