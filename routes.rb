Rails.application.routes.draw do
  root "main#index"

  get '/cities/view', to: 'cities#viewCities'

  get '/cities/new', to: 'cities#newCity'

  post '/cities/create', to: 'cities#postCreateCity'

  get '/cities/update', to: 'cities#getUpdateCity'

  post '/cities/update', to: 'cities#postUpdateCity'

end
