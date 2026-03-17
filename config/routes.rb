Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/show'
  get 'landmarks/index'
  get 'landmarks/show'
  get 'restaurants/index'
  get 'restaurants/show'
  # Root path - goes to home#index
  root "home#index"
  
  # About page
  get "about", to: "home#about"
  
  # RESTful routes for restaurants and landmarks
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  
  resources :landmarks do
    resources :reviews, only: [:new, :create]
  end
  
  resources :reviews, only: [:index, :show, :destroy]
end
