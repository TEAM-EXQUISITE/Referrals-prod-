Rails.application.routes.draw do
  get 'users/index'
  devise_for :users, only: [:sessions]
  root "events#index" 
  resources :events
  resources :users
end
