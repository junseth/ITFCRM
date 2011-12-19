class Goal < ActiveRecord::Base
  has_and_belongs_to_many :conversations
  
  has_many :user_goals, :dependent => :destroy, :inverse_of => :goal
  accepts_nested_attributes_for :user_goals, :allow_destroy => true
  
end
