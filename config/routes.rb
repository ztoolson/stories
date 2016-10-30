Rails.application.routes.draw do
  root 'homes#show'

  devise_for :users

  resources :posts, only: [:create, :new]
end
