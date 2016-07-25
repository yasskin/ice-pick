class CreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :first_name
      t.string :last_name
      t.string :track
      t.string :transportation
      t.boolean :lunch
      t.boolean :ninth_floor
      t.string :photo

      t.timestamps()
    end
  end
end
