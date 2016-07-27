class AddTargetColumnToQuestions < ActiveRecord::Migration
  def change
    add_column(:questions, :target, :string)
  end
end
