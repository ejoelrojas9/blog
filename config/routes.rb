Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :articles
    
=begin
    get "/articles" index
    post "/articles" create
    delete "/articles/:id" destroy
    get "/articles/id" show
    get "/articles/new" new
    get "/articles/id/edit" edit
    patch "/articles/:id" update
    put "artivcles/:id" update
=end
  #get 'wellcome/index'

  root 'wellcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
