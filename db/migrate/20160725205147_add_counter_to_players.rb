class AddCounterToPlayers < ActiveRecord::Migration
  def change
    add_column(:players, :counter, :integer)
  end
end
