class CreateUserResources < ActiveRecord::Migration[5.1]
  def change
    create_table :user_resources, id: :uuid do |t|
      t.integer :quantity
      t.belongs_to :user, foreign_key: true, type: :uuid
      t.belongs_to :resource, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
