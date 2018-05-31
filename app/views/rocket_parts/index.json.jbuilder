# frozen_string_literal: true

json.array! @rocket_parts, partial: 'rocket_parts/rocket_part', as: :rocket_part
