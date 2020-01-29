Rails.application.routes.draw do
  get 'empleados/create'
  get 'empleados/show'
  get 'empleados/edit'
  get 'empleados/new'
  get 'empleados/update'
  get 'empleados/destroy'
  root 'sessions#new'
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :sucursals
  get 'home', to: 'home#index', as: 'home'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
