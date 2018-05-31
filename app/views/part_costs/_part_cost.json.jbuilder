# frozen_string_literal: true

json.extract! part_cost, :id, :cost, :belongs_to, :belongs_to, :created_at, :updated_at
json.url part_cost_url(part_cost, format: :json)
