Rails.application.routes.draw do
  resources :posts
    devise_for :users

  get "/events/day" => "events#day"
  get "/events/week" => "events#week"
  resources :events

  root 'home#index'
  get "/" => "home#index"
  get "about" => "home#about"



  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

end
