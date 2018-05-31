# frozen_string_literal: true

json.array! @part_costs, partial: 'part_costs/part_cost', as: :part_cost
