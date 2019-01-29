Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'users/new' => 'users#new', as: :new_user

  post 'users' => 'users#create'

  resources :posts
  root to: 'welcome#index'
end
