Rails.application.routes.draw do
  resources :bancos
  resources :destroys
  resources :objetos
  root 'bancos#index'
  root 'nombre_objetos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  namespace :api, defaults: {format: 'json'} do
    resources :bancos, only: [:index, :create, :destroy, :update, :show]
  end

end
