Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/songs', to: 'songs#index'
  # the http verb and where we want to send them to, this is where we define
  # what we want our method to be called, here 'index'
  #below is the shortcut instead of listing out each verb and where to go
  root 'songs#index'
  resources :songs, only: [:index]

  #you can limit what resources you want to expose with `only: [:index]` or
  # list whatever you want to see
  # can do the opposite with `except: [:destroy]` will allow us to have all
  # RESTful routes EXCEPT the ones listed here.
end
