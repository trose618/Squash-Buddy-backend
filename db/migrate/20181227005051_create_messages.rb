class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :reciever_id
      t.string :message_content

      t.timestamps
    end
  end
end
