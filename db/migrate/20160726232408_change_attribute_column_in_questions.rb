class ChangeAttributeColumnInQuestions < ActiveRecord::Migration
  def change
    rename_column(:questions, :attribute, :topic )
  end
end
