Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :costumes do
    resources :bookings, only: [:new, :create]
  end
  # resources :bookings, only: [:destroy]
end
