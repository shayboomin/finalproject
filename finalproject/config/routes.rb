Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get '/', to: 'boomintravel#index'
 get '/login', to: 'boomintravel#user'
 get '/hotel', to: 'boomintravel#hotel'
 get '/flight', to: 'boomintravel#flight'
end
