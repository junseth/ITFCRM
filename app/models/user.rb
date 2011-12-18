class User < ActiveRecord::Base
  ROLES = %w[user admin superadmin]
  
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :agent, :agent_id, :role
  
  has_many :conversations
  
  belongs_to :agent
  
  def role_enum
    ['user','admin','superadmin']
  end
end
