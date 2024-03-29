Rails.application.routes.draw do
  
  devise_for :users
  root to: "pages#home"
  resources :users, only: %i[show]
  resources :bookings, only: %i[destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :rooms do
    resources :bookings, only: %i[create]
  end
end
