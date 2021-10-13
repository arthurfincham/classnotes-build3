# frozen_string_literal: true

Rails.application.routes.draw do
  get 'notes/index'
  get 'home/index'
  devise_for :users
  resources :notes, only: %i[new create edit update destroy]
  root to: 'notes#index'
  get 'tags/:tag', to: 'notes#index', as: :tag
end
