class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :right_answer_id
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
