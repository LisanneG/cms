class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :group
      t.string :key

      t.timestamps
    end
  end
end
