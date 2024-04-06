Rails.application.routes.draw do

  resources :groups do
    post "join", on: :member
    get "home", on: :member
    delete "leave", on: :member
    resources :posts
  end
  
  devise_for :users
  resources :users
  
  
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  
  # Defines the root path route ("/")
  root "main#home"
  
end
