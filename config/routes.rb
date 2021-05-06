Rails.application.routes.draw do
  get 'homeprojectspage/home'
  get 'homeprojectspage/notloggedinprojectsview'
  devise_for :users #This needs to be the path of whatever yours is called
  resources :projectlists
  root to: 'homeprojectspage#home'
  devise_scope :user do
    root :to => 'devise/sessions#new'
    get 'users/logout' => 'devise/sessions#destroy'
  end
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end