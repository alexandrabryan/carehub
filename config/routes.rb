Rails.application.routes.draw do
  #get 'home/index'
  get '/' => 'home#index'
  #root 'application#hello'
  #root 'home#index'
end
