Rails.application.routes.draw do
<<<<<<< Updated upstream
  get 'home/index'
    root 'application#hello'
=======
  devise_for :users
  root 'home#index'
  get "/" => "home#index"
  get "about" => "home#about"
>>>>>>> Stashed changes
end
