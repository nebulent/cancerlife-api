class Employee < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  validates_presence_of :organization_id
  validates_presence_of :role
  validates_presence_of :user_id

  attr_accessible :role
  
  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
