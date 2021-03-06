Rails.application.routes.draw do
  get 'attractions/new'
  post 'attractions/new' => 'attractions#create'
  get 'attractions/create'
  get 'attractions/destroy'
  get 'attractions/show'

  root 'static_pages#home'

  get '/signin' => 'sessions#new'
  post '/sessions/create' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  post '/rides' => 'rides#new'
  resources :attractions
  resources :users
  post 'users/new' => 'users#create'




end
