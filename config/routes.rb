Rails.application.routes.draw do
  get 'dummy/index'

  resources :comments
  root 'dummy#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
