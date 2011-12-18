class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.text :notes

      t.references :user

      t.timestamps
    end
  end
end
