# frozen_string_literal: true

class CreateRockets < ActiveRecord::Migration[5.1]
  def change
    create_table :rockets, id: :uuid do |t|
      t.string :name
      t.string :image_url

      t.belongs_to :user, type: :uuid

      t.timestamps
    end
  end
end
