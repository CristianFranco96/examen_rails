Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :sucursals
  resources :empleados, only: [:new, :create, :edit, :destroy]
  root 'sessions#new' 
  get 'home', to: 'home#index', as: 'home'
  get 'home/pdf_convert', to: 'home#pdf_convert', as: 'pdf'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
