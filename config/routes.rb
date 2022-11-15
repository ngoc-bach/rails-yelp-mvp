Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Read all
  get 'restaurants', to: 'restaurants#index'

  # Create
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants', to: 'restaurants#create'

  # Read one
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Get review form and create review
  get 'restaurants/:id/reviews/new', to: 'reviews#new', as: :new_restaurant_review
  post 'restaurants/:id/reviews', to: 'reviews#create', as: :restaurant_reviews
end
