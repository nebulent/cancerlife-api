class UserCircle < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  belongs_to :user

  validates_presence_of :name
  validates_presence_of :user_id
  
  attr_accessible :name

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
