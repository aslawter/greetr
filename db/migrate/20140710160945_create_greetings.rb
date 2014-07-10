class CreateGreetings < ActiveRecord::Migration
  def change
    create_table :greetings do |t|
      t.string :message, null: false
      t.integer :sender_id, null: false, index: true
      t.string :receiver_id, null: false, index: true
      t.timestamps null: false
    end
  end
end
