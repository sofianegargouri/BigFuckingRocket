# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#dashboard'

  devise_for :users

  get 'dashboard' => 'pages#dashboard'
  resources :rocket_parts, only: [] do
    patch :level_up, on: :member
  end
  resources :rockets, only: %i[new create]
end
