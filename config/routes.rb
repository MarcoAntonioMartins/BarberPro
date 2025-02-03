# config/routes.rb
Rails.application.routes.draw do
  resources :appointments, only: [:index, :create]
  resources :services, only: [:index]
  
  get 'about', to: 'static_pages#about'
  get 'services', to: 'static_pages#services'
  
  root 'appointments#index'
end
