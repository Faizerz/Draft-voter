Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :followers, only: [:index]
  resources :polls, :users
  resources :votes, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#new"

end
