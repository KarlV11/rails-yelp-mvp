Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [:new, :create]

   ## get 'restaurants', to: 'restaurants#index'
   ## get 'restaurants/new', to: 'restaurants#new' as: :new_restaurant
   ## post 'restaurants', to: 'restaurants#create'
   ## get 'restaurants/reviews', to: "restaurants#show" as: :restaurant
  ##  post 'restaurants/reviews', to: 'restaurants#createreview'
  end
end
