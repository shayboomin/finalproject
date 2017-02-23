Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 get '/', to: 'boomintravel#index'
 get '/login', to: 'boomintravel#login'
 get '/hotel', to: 'boomintravel#hotel'
 get '/flight', to: 'boomintravel#flight'
 get '/confirm', to: 'boomintravel#confirm'
 get '/profile', to: 'boomintravel#profile'
 get '/event', to: 'boomintravel#event'
 post '/login', to: 'users#login'
 get '/logout', to: 'users#logout'
 resources :users 
end
