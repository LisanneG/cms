class AddQuestionIdToLocation < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :question_id, :integer
  end
end

