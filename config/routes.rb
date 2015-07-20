Rails.application.routes.draw do
  root 'home#index'

  get '/items', to: 'items#index'

  get '/signup', to: 'customers#new'
  post '/customers', to: 'customers#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

end
