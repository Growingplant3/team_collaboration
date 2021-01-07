Rails.application.routes.draw do
  # resources :users
  get '/', to: 'users#home'
  resources :users, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :sessions
  resources :sessions, only: %i[new create destroy]
end
