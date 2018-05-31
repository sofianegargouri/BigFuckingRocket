# frozen_string_literal: true

class CreateParts < ActiveRecord::Migration[5.1]
  def change
    create_table :parts, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
