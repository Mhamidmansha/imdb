Rails.application.routes.draw do
  devise_for :users
  root to: "welcome#index"
  get 'welcome/index'
  resources :directors
  resources :movies
  resources :actors
  resources :actor_movies
  resources :director_movies
  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#internal_server'
  get '/422', to: 'errors#unprocessable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
