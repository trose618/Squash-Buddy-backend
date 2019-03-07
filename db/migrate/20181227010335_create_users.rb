class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :level
      t.string :city
      t.integer :zipcode

      t.timestamps
    end
  end
end
