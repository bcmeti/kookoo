class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :bio, :email, :full_name, :location
  
  has_many :messages, dependent: :destroy
  
  has_many :subscriptions, :class_name => "Subscription", :foreign_key => "subscriber_id" 
  has_many :subscribers, :class_name => "Subscription", :foreign_key => "subscribee_id"

  # attr_accessible :bio, :email, :full_name, :location
  validates :full_name, :email, presence: true
  validates :email, format: { with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }

end


