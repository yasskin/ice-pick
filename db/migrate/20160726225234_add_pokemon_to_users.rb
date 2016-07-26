class AddPokemonToUsers < ActiveRecord::Migration
  def change
    add_column(:users, :pokemon, :string)
  end
end
