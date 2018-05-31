# frozen_string_literal: true

json.extract! rocket, :id, :name, :image_url, :created_at, :updated_at
json.url rocket_url(rocket, format: :json)
