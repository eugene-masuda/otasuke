# frozen_string_literal: true

Rails.application.routes.draw do
  get '/dashboard', to: 'users#dashboard'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'high_scores/index'

  post '/users/edit', to: 'users#update'

  resources :high_scores
  root 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
