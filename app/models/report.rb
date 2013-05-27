class Report < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  validates_presence_of :type
  validates_presence_of :user_id
  validates_presence_of :user_update_id

  attr_accessible :type

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
