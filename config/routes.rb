Rails.application.routes.draw do

  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/index', to: 'characters#index'
  get '/arena', to: 'characters#arena'
  post '/new', to: 'characters#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
