Rails.application.routes.draw do
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end
  resources :applications
  devise_for :users
  #devise_for :users, controllers: { sessions: 'users/sessions' }
  #devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'signup' }
  get 'home/index'
  get 'home/about'
  resources :jobs

  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
