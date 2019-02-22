Rails.application.routes.draw do
  resources :partnerships, only: [:new, :create]
  get 'products/index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  #get 'welcome/index'

  # For details on the DSL availble within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :welcome, only: [:index, :new, :create]

  resources :products, only: [:index, :show]
  resources :lines, only: [:show]
end
