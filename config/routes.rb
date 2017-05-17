Rails.application.routes.draw do
  devise_for :users,:path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout',:sign_up => 'register'}
  resources :users
  get 'world', to:'sections#world'

  get '/health', to:'sections#health'

  get '/sports', to:'sections#sports'

  get '/business', to:'sections#business'

  get 'sections/contact'

  post 'sections/thank_you'

  get '/tech', to:'sections#tech'


  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root'articles#index'
end
