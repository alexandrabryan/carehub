Rails.application.routes.draw do
    devise_for :users
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
