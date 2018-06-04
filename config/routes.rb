# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#dashboard'

  devise_for :users
  ActiveAdmin.routes(self)

  get 'dashboard' => 'pages#dashboard'
  get 'leaderboard' => 'pages#leaderboard'
  resources :rocket_parts, only: [] do
    patch :level_up, on: :member
  end
  resources :rockets, only: %i[new create]
end
