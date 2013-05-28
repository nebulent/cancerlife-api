class UserFriend < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps
  
  belongs_to :user
  belongs_to :friend, :class_name => "User"

  validates_presence_of :status
  
  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
