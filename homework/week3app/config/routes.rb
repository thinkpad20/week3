Week3app::Application.routes.draw do
    get '/poker', controller: 'poker', action: 'poker', as: 'poker'
    get '/rps', controller: 'rps', action: 'rps', as: 'rps'
    get '/playrps', controller: 'rps', action: 'playrps', as: 'playrps'
    get '/dice', controller: 'dice', action: 'dice', as: 'dice'
    post '/dice/roll', controller: 'dice', action: 'rolldice', as: 'rolldice'
end
