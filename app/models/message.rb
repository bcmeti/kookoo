class Message < ActiveRecord::Base
  default_scope :order => 'created_at DESC'

  belongs_to :user
  belongs_to :author, :class_name => "User", :foreign_key => "user_id"

  validates :body, presence: true
  validates :body, length: { maximum: 100 }

  attr_accessible :body, :user_id

end
