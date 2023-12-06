Rails.application.routes.draw do
  get 'calender/index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/top_logout_path", to: 'top#top_logout_path'
  get '/top_logout_path', to: 'top#top_logout_path'
  
  get '/login',to: 'session#login',as: 'login'
  post '/session/login', to: 'session#login'
  post '/login', to: 'session#login'
  
  get '/registration/create_IP',to: 'registration#create_IP',as: 'create_IP'
  post '/registration/create_IP',to: 'registration#create_IP'
  post '/create_IP',to: 'registration#create_IP'
  
  get '/main',to: 'top#main'
  root 'top#main'
  # Defines the root path route ("/")
  # root "articles#index"
end
