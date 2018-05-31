# frozen_string_literal: true

json.extract! stat, :id, :name, :created_at, :updated_at
json.url stat_url(stat, format: :json)
