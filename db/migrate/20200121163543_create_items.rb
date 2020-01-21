class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :listId
      t.string :title
      t.string :imageUrl
      t.integer :year
      t.integer :rank

      t.timestamps
    end
  end
end
