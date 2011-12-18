class CreateConversationGoalTable < ActiveRecord::Migration
  def change
    create_table :conversations_goals, :id => false do |t|
      t.references :conversation
      t.references :goal
    end
  end
end
