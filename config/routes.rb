Rails.application.routes.draw do
  # root to: "pages#home"

  root to: "categories#index"
  resources :categories, only: %i[index show]
  resources :plants , only: %i[show] do

  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :plants

end
