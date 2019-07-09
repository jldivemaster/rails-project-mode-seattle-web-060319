Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :projects, :organizations, :locations, :categories, only: [:index, :show]
  resources :users, :user_trips

end
