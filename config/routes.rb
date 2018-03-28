Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  #get 'welcome/index'

  # For details on the DSL availble within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :welcome, only: [:index, :new, :create]
end
