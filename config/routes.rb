Rails.application.routes.draw do

  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/characters', to: 'characters#index'
  get '/arena', to: 'characters#arena'
  post '/characters', to: 'characters#create'
  post '/edit', to: 'characters#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
