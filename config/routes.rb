Rails.application.routes.draw do


  get 'users/new'

  get 'home/index'
  resources :services, only: [:index, :show]
  resources :about_us, only: [:index]
  resources :testimonials, only: [:index]
  resources :careers, only: [:index]
  resources :contacts, only: [:index]
  resources :admin_dashboard, only: [:index]
  resources :users
  resources :admin_teams
  resources :members

  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
