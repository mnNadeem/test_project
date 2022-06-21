Rails.application.routes.draw do
  devise_for :admin_users
  resources :pages
  root :to => "pages#index"
  # after_sign_in_path_for 'pages#index'
  # get 'pages/about'
  # get 'pages/contact'
  # get 'pages/home'
  # get 'products/prod'
  # get 'employees/employ'
  # get 'pictures/pic'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Rails.application.routes.draw do


  # get "about", to: "pages#about"        #custom routs
  # get "contact", to: "pages#contact"

  # #   get 'items/:id', to: 'items#items_show', as:'item'  #member routes
  # #   get 'pics/index'
  # #   get 'products', to: 'products#index', as:'products'    #custom routes or collection routes
  # #   get 'products/:id', to: 'products#show', as:'product'  #member routes

  # # end
  # root 'pages#home'    #its the root path or a home page of my application






end


