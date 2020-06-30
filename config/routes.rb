Rails.application.routes.draw do
  root 'lists#index'
  get 'lists/:list_id/:todo_id' => 'todos#show'
  get 'lists/:list_id' => 'todos#new'
  post 'lists/:list_id' => 'todos#create'
  # resources :todos do
  #   member do
  #       get :toggle
  #   end
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
