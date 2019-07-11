Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'projects#home'

  get 'users/new' => 'users#new' #, as: :new_user
  post 'users' => 'users#create'


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'


  resources :projects, :organizations, :locations, :categories, only: [:index, :show]
  resources :users, :user_trips


end
