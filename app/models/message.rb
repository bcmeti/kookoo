class Message < ActiveRecord::Base
  attr_accessible :body
  validates :body, presence: true
  validates :body, length: { maximum: 100 }
end
