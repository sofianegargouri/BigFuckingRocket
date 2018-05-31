# frozen_string_literal: true

class CreatePartCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :part_costs, id: :uuid do |t|
      t.integer :cost

      t.belongs_to :part, foreign_key: true, type: :uuid
      t.belongs_to :resource, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
