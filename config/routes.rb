Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get "/" => "home#index"
  get "about" => "home#about"
end
