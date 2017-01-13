Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD

  get '/', to: 'BoominTravel#index'
=======
 get '/', to: 'boomintravel#index'
 get '/login', to: 'boomintravel#user'
 get '/hotel', to: 'boomintravel#hotel'
 get '/flight', to: 'boomintravel#flight'
>>>>>>> 273ad9bb426c61985b98640da80bac1a6105b97d
end
