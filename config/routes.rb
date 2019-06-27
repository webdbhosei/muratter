Rails.application.routes.draw do
  resources :chatrooms
  resources :chats
  devise_for :users
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "chats#index"
end
