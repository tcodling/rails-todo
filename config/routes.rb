Rails.application.routes.draw do
  root 'lists#index'

  get 'lists/new' => 'lists#new'
  post 'lists' => 'lists#create'

  get 'lists/:list_id/todos/:todo_id' => 'todos#show', as: :todo
  get 'lists/:list_id/todos/:todo_id/toggle' => 'todos#toggle', as: :toggle
  get '/toggle/:todo_id' => 'todos#toggleIndex'

  get 'lists/:list_id' => 'todos#new'
  post 'lists/:list_id' => 'todos#create'

  get 'lists/:list_id/todos/:todo_id/edit' => 'todos#edit', as: :edit_todo
  patch 'lists/:list_id/todos/:todo_id/' => 'todos#update', as: :update_todo

  get 'lists/:list_id/todos/:todo_id/destroy' => 'todos#destroy', as: :destroy_todo
  get 'lists/:list_id/destroy' => 'lists#destroy'

  # AUTH

  get 'signup' => 'users#new'
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
