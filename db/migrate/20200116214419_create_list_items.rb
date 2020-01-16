class CreateListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :list_items do |t|
      t.integer :listId
      t.integer :itemId
      t.integer :rank

      t.timestamps
    end
  end
end
