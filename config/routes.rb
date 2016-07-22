Rails.application.routes.draw do
  get 'sessions/new'

  post 'user_token' => 'user_token#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
