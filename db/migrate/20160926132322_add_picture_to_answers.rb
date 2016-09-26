class AddPictureToAnswers < ActiveRecord::Migration[5.0]
  def change
    add_column :answers, :picture, :string
  end
end
