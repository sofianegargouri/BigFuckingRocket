# frozen_string_literal: true

class CreateResources < ActiveRecord::Migration[5.1]
  def change
    create_table :resources, id: :uuid do |t|
      t.string :name
      t.integer :regen_time

      t.timestamps
    end
  end
end
