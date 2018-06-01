# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#dashboard'

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'dashboard' => 'pages#dashboard'
  resources :rocket_parts, only: [] do
    patch :level_up, on: :member
  end
  resources :rockets, only: %i[new create]
end
