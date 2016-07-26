class ChangeLunchAndNinthFloorType < ActiveRecord::Migration
  def change
    change_column(:users, :lunch, :string)
    change_column(:users, :ninth_floor, :string)
  end
end
