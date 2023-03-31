Rails.application.routes.draw do
  devise_for :users, only: [:sessions]
  root "events#index" 
  resources :events
  resources :users
end
