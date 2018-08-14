Rails.application.routes.draw do
<<<<<<< HEAD
  resources :bancos
  resources :destroys
  resources :objetos
  root 'bancos#index'
  root 'nombre_objetos#index'
=======
  resources :usuarios
  resources :donaciones
  resources :fundaciones
  resources :objetos
  resources :tipo_donaciones
  resources :bancos
  resources :users
  root 'users#index'
>>>>>>> 14cb8fd53047e1d7ef0677e7605daa5bc54fd2f6
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  namespace :api, defaults: {format: 'json'} do
    resources :bancos, only: [:index, :create, :destroy, :update, :show]
  end

end
