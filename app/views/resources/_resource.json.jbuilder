# frozen_string_literal: true

json.extract! resource, :id, :name, :regen_time, :created_at, :updated_at
json.url resource_url(resource, format: :json)
