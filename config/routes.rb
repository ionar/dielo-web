Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL availble within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
