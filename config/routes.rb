Rails.application.routes.draw do
  resources :projectlists
  root to: 'projectlists#index'
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
