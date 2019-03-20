Rails.application.routes.draw do
  resources :events
  devise_for :users
  root 'home#index'
  get "/" => "home#index"
  get "about" => "home#about"
end
