Rails.application.routes.draw do
  root to: 'pages#root'

  get '/auth', to: 'home#index'
  get '/auth/:provider/callback', to: 'sessions#create'
  post '/auth/:provider/callback', to: 'sessions#create' # Needed for developer strategy

  delete '/sessions', to: 'sessions#destroy', as: :logout

  resources :messages, only: %i(index create)
end
