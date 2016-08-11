Rails.application.routes.draw do
  resources :list_items
  resources :lists
  resources :events
  resources :days
  resources :happenings
  get 'sessions/new'

  post 'user_token' => 'user_token#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
