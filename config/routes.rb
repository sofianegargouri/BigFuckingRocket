# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user_resources
  resources :parts
  resources :resources
  resources :stats
  resources :rockets
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
