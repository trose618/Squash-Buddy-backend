class ChangeLevelToBeFloatInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :level, :float
  end
end
