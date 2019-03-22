Rails.application.routes.draw do
  resources :lists
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
    delete 'logout', to: 'devise/sessions#destroy'
  end
  
end
