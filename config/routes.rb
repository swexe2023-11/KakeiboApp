Rails.application.routes.draw do
  get 'main/login'
  get 'main/new'
  get 'main/logout'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  get '/new',to: 'session#new',as: 'login'
  post 'session/new',to: 'session#new'
  
  get '/new',to: 'registration#new',as: 'create_IP'
  post 'registration/new',to: 'registration#new'
  
  get '/index',to: 'home#index'
  root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
