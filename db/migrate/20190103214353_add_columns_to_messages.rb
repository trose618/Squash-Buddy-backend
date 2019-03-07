class AddColumnsToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :senderName, :string
    add_column :messages, :recieverName, :string
  end
end
