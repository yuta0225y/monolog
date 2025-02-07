# frozen_string_literal: true

Rails.application.routes.draw do
  root 'static_pages#top'
  resources :users, only: %i[new create]
  resources :boards, only: %i[index new create show edit update destroy] 
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
end
