class RemoveFieldsFromQuestions < ActiveRecord::Migration[5.0]
  def change
  	remove_column :questions, :multiple_choice
  	remove_column :questions, :multiple_choice_image
  	remove_column :questions, :open
  end
end
