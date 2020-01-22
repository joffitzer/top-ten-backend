class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :listId
      t.string :Title
      t.string :Poster
      t.integer :Year
      t.integer :Rank

      t.timestamps
    end
  end
end
