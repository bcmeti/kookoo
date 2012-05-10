class User < ActiveRecord::Base
  attr_accessible :bio, :email, :full_name, :location
  validates :full_name, :email, presence: true
  validates :email, format: { with: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
end
