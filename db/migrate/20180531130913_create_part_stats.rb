# frozen_string_literal: true

class CreatePartStats < ActiveRecord::Migration[5.1]
  def change
    create_table :part_stats, id: :uuid do |t|
      t.integer :ratio
      t.belongs_to :stat, foreign_key: true, type: :uuid
      t.belongs_to :part, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
