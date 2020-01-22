class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :username
      t.string :imageUrl

      t.timestamps
    end
  end
end
