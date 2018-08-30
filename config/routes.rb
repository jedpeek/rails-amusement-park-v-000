Rails.application.routes.draw do
  get 'attractions/new'
  get 'attractions/create'
  get 'attractions/destroy'
  get 'attractions/show'
  root 'application#home'
  get 'sessions/signin' => 'sessions#new'
  post 'sessions/create' => 'sessions#create'
  get 'sessions/signout' => 'sessions#destroy'
  post 'rides/new' => 'rides#new'
  resources :attractions
  resources :users
end
