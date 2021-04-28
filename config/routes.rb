Rails.application.routes.draw do
  devise_for :users
  resources :projectlists
  #root to: 'users/sign_in#index'
  devise_scope :user do
    root :to => 'devise/sessions#new'
  end
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
