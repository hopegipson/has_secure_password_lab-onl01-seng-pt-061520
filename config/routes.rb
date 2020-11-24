Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new', as: 'new_user'
  post '/create_user', to: 'users#create', as: 'create_user'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create', as: 'update_session'
  get '/home', to: 'welcome#home', as: 'home'
  resources 'users'
end
