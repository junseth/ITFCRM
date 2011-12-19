class UserGoal < ActiveRecord::Base
  belongs_to :user
  belongs_to :goal

  validates :user, :presence => true
  validates :goal, :presence => true
  validates :score, :presence => true

end
