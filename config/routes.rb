Rails.application.routes.draw do
  get 'invites/new'

  root 'sessions#new'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :events
end
