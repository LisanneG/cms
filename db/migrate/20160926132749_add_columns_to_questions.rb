class AddColumnsToQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :multiple_choice, :boolean
    add_column :questions, :multiple_choice_image, :boolean
    add_column :questions, :open, :boolean
  end
end
