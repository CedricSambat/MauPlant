Rails.application.routes.draw do
  root to: "pages#home"

  resources :categories, only: %i[index show]
  resources :plants , only: %i[show] do
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :gardens do
    resources :garden_plants, only: [:new, :create]
  end
  resources :plants
  resources :garden_plants, only:[:destroy]
end
