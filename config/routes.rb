Rails.application.routes.draw do
  root to: 'home#index'
  resources :users, only: [:index, :create, :show]
  resources :votes, only: [:index]
end
