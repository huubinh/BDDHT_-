Rails.application.routes.draw do
  resources :directors
  devise_for :users
  resources :movies do
  	resources :comments, except: [:show, :index]
  end
  resources :actors
  root 'movies#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
