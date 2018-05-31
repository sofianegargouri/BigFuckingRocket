# frozen_string_literal: true

json.array! @stats, partial: 'stats/stat', as: :stat
