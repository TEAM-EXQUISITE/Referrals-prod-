Rails.application.routes.draw do
  devise_for :users, only: [:sessions]
  resources :events
  resources :users
  root "pages#home" 
end
