Rails.application.routes.draw do
  resources :restaurant_pizzas
  resources :pizzas, only: [:index, :show]
  resources :restaurants, only: [:index, :show, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
