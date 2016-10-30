Rails.application.routes.draw do
  root 'homes#show'
  resources :posts, only: [:create, :new]
end
