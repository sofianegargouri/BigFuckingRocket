# frozen_string_literal: true

json.array! @part_stats, partial: 'part_stats/part_stat', as: :part_stat
