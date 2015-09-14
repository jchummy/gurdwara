Rails.application.routes.draw do
  
  #user routes
  get '/signup', to: 'users#new'
  get '/profile', to: 'users#show'
  resources :users, only: [:create]

  #session routes
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  root 'home#index'
end


#  Prefix Verb URI Pattern         Controller#Action
#   signup GET  /signup(.:format)   users#new
#  profile GET  /profile(.:format)  users#show
#    users POST /users(.:format)    users#create
#    login GET  /login(.:format)    sessions#new
#   logout GET  /logout(.:format)   sessions#destroy
# sessions POST /sessions(.:format) sessions#create
#     root GET  /                   home#index