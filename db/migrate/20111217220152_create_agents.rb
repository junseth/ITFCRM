class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :title
      t.string :email
      
      t.boolean :disabled      

      t.timestamps
    end
  end
end
