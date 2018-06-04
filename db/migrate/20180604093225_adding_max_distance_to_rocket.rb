# frozen_string_literal: true

class AddingMaxDistanceToRocket < ActiveRecord::Migration[5.1]
  def change
    add_column :rockets, :max_distance, :integer, default: 0
  end
end
