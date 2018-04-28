Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/new'

  get 'favorites/index'

  get 'sessions/new'

  root 'pages#index'
  get 'pages/help'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources 'users'
  resources 'topics'

  post '/favorites', to: 'favorites#create'
  get '/favorites', to: 'favorites#index'
  post '/comments', to: 'comments#create'
  get '/comments', to: 'favorites#index'

end
