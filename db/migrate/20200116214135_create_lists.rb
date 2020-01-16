class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.integer :userId
      t.string :listName
      t.string :description
      t.string :type

      t.timestamps
    end
  end
end
