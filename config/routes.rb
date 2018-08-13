Rails.application.routes.draw do
  resources :usuarios
  resources :donaciones
  resources :fundaciones
  resources :objetos
  resources :tipo_donaciones
  resources :bancos
  resources :users
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
