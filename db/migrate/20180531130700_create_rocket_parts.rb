# frozen_string_literal: true

class CreateRocketParts < ActiveRecord::Migration[5.1]
  def change
    create_table :rocket_parts, id: :uuid do |t|
      t.integer :level
      t.belongs_to :rocket, foreign_key: true, type: :uuid
      t.belongs_to :part, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
