Rails.application.routes.draw do
  root 'static_pages#home'
  get '/new', to: 'users#new', as: 'newuser'

  get '/:user/:name', to: 'users#show'

  # post '/:user', to: 'users_controller#new_post'
  post '/create', to: 'users#create'

  get '/fuckoff', to: 'users#fuck'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
