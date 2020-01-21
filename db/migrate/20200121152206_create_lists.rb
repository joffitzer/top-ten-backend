class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.integer :profileId
      t.string :listName

      t.timestamps
    end
  end
end
