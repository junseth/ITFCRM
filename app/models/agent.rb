class Agent < ActiveRecord::Base
  has_many :users
  
  def to_s
    title
  end
  
end
