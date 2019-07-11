Rails.application.routes.draw do
  put 'join/enter/:id' => "join#enter", :as => 'join_enter'
  put 'join/confirm/:id' => "join#confirm", :as => 'join_confirm'
  put 'join/join/:id' => "join#join", :as => 'join_join'
  get 'chatrooms/exit' => 'chatrooms#exit_room', :as => 'exit_chatroom'
  put 'chatrooms/make_subchatroom' => 'chatrooms#make_subchatroom',
                                        :as => 'make_subchatroom'
  resources :chatrooms
  resources :chats
  devise_for :users
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "chatrooms#index"
end
