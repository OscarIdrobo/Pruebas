Rails.application.routes.draw do
  resources :usuarios
  resources :donaciones
  resources :fundaciones
  resources :objetos
  resources :tipo_donaciones
  resources :bancos
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  
  namespace :api, defaults: {format: 'json'} do
    resources :bancos, only: [:index, :create, :destroy, :update, :show]
  end

  namespace :api, defaults: {format: 'json'} do
    resources :donaciones, only: [:index, :create, :destroy, :update, :show]
  end

  namespace :api, defaults: {format: 'json'} do
    resources :fundaciones, only: [:index, :create, :destroy, :update, :show]
  end

  namespace :api, defaults: {format: 'json'} do
    resources :objetos, only: [:index, :create, :destroy, :update, :show]
  end

  namespace :api, defaults: {format: 'json'} do
    resources :tipo_donaciones, only: [:index, :create, :destroy, :update, :show]
  end

  namespace :api, defaults: {format: 'json'} do
    resources :usuarios, only: [:index, :create, :destroy, :update, :show]
  end

end
