Rails.application.routes.draw do
  root 'todos#index'
  resources :todos, only: [:index, :edit, :create, :update, :destroy]
end
