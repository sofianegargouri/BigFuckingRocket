# frozen_string_literal: true

json.extract! rocket_part, :id, :level_up, :created_at, :updated_at
json.url rocket_part_url(rocket_part, format: :json)
