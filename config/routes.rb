Rails.application.routes.draw do
  root 'home#index'
  get "/" => "home#index"
  get "about" => "home#about"
end
