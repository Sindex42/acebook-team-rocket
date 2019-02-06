# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :posts, only: [:index]
    end
  end

  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :posts

  root to: 'welcome#index'
end
