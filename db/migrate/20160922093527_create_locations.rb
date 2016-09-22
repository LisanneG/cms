class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :title
      t.text :text
      t.string :x
      t.string :y
      t.boolean :completed

      t.timestamps
    end
  end
end
