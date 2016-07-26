class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table(:questions) do |t|
      t.string :prompt
      t.string :attribute
    end
  end
end
