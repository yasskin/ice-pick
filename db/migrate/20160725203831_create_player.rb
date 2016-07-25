class CreatePlayer < ActiveRecord::Migration
  def change
    create_table(:players) do |t|
      t.integer :score
      t.string :player_name

      t.timestamps()
    end
  end
end
