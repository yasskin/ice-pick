class AddSleepingAndTempatureColumnsToUsers < ActiveRecord::Migration
  def change
    add_column(:users, :sleeping, :string)
    add_column(:users, :temperature, :string)
  end
end
