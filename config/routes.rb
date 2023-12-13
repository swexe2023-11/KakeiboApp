Rails.application.routes.draw do
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/InRecipt",to: 'main#InRecipt'
  get "/InRecipt",to: 'main#InRecipt'
  post "/Recipt", to: "recipt#create"
  
  post "/top_logout_path", to: 'top#top_logout_path'
  get '/top_logout_path', to: 'top#top_logout_path'
  
  get '/login',to: 'session#login',as: 'login'
  post '/session/login', to: 'session#login'
  post '/login', to: 'session#login'
  
  get '/registration/create_IP',to: 'registration#create_IP',as: 'create_IP'
  post '/registration/create_IP',to: 'registration#create_IP'
  post '/create_IP',to: 'registration#create_IP'
  
  get '/main',to: 'top#main'
  post'/main',to:'main#main'
  root 'top#main'
  # Defines the root path route ("/")
  # root "articles#index"
end
