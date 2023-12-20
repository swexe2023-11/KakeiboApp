Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get 'main/m12', to: 'main#m12'
  get 'main/m11', to: 'main#m11'
  get 'main/m10', to: 'main#m10'
  get 'main/m9', to: 'main#m9'
  get 'main/m8', to: 'main#m8'
  get 'main/m7', to: 'main#m7'
  get 'main/m6', to: 'main#m6'
  get 'main/m5', to: 'main#m5'
  get 'main/m4', to: 'main#m4'
  get 'main/m3', to: 'main#m3'
  get 'main/m2', to: 'main#m2'
  get 'main/m1', to: 'main#m1'
  get 'main/all', to: 'main#all'
  
  get "/main_day", to: 'main#main_day'
  post "/main/month", to: "main#main_mon"
  
  post "/InRecipt",to: 'main#InRecipt'
  get "/InRecipt",to: 'main#InRecipt'
  post "/Recipt", to: "recipt#create"
  
  post "/top_logout_path", to: 'top#top_logout_path'
  get '/top_logout_path', to: 'top#top_logout_path'
  
  get '/login',to: 'session#login',as: 'login'
  post 'session/session/login', to: 'session#login'
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
