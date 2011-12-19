class CreateUserGoals < ActiveRecord::Migration
  def change
    create_table :user_goals do |t|
      t.references :user
      t.references :goal
      t.integer :score

      t.timestamps
    end
    add_index :user_goals, :user_id
    add_index :user_goals, :goal_id
  end
end
