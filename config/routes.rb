Rails.application.routes.draw do
  # get '/home', :to => redirect('home.html')
  devise_for :users, only: [:sessions]
  # root "events#index"
  root "pages#home" 
  resources :events
  resources :users
end
