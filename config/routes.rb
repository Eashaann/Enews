Rails.application.routes.draw do
  get 'world', to:'sections#world'

  get '/health', to:'sections#health'

  get '/sports', to:'sections#sports'

  get '/business', to:'sections#business'

  get '/tech', to:'sections#tech'

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root'articles#index'
end
