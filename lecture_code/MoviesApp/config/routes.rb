MoviesApp::Application.routes.draw do

  get '/movies', controller: 'movies', action: 'index', as: 'movies'

  get '/movies/new', controller: 'movies', action: 'new', as: 'new_movie'

  get '/movies/:id', controller: 'movies', action: 'details', as: 'movie'


  post '/movies/create', controller: 'movies', action: 'create'

end
