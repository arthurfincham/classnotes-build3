# frozen_string_literal: true

Rails.application.routes.draw do
  get 'notes/index'
  get 'home/index'
  devise_for :users
  root to: 'notes#index'
end
