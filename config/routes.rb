Rails.application.routes.draw do
  root 'polls#index'

  resources :polls, only: [:index, :show, :new, :create]
  resources :users
end
