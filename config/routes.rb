Rails.application.routes.draw do
  resources :polls, only: [:index, :show, :new, :create]
  resources :users
end
