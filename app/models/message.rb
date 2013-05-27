class Message < ActiveRecord::Base

  validates_presence_of :is_public
  validates_presence_of :is_read
  validates_presence_of :sender
  validates_presence_of :sender_id
  validates_presence_of :type
  validates_presence_of :user_id
  
  attr_accessible :is_public, :is_read, :sender, :type
end
