class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
