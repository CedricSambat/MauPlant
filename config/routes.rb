Rails.application.routes.draw do
  root to: "pages#home"

  resources :plants , only: %i[show index]
  devise_for :users

  resources :gardens do
    resources :garden_plants, only: [:new, :create]
  end
  resources :garden_plants, only:[:destroy]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
