# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#dashboard'

  devise_for :users

  get 'dashboard' => 'pages#dashboard'
  patch 'rocket_parts/:id/level_up' => 'rocket_parts#level_up'
  resources :rockets, only: %i[new create]
end
