Rails.application.routes.draw do
  get '/signup', to: 'users#new', as: 'signup'
  post '/users', to: 'users#create'
  get '/homepage', to: 'users#homepage', as: 'homepage'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
