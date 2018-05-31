# frozen_string_literal: true

json.extract! part_stat, :id, :ratio, :stat_id, :part_id, :created_at, :updated_at
json.url part_stat_url(part_stat, format: :json)
