class Reward < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  belongs_to :goal

  validates_presence_of :creator_id
  validates_presence_of :datetime
  validates_presence_of :user_id

  attr_accessible :datetime

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
    self.is_hidden = false
  end

  def update_timestamps
    self.modified = Time.now
  end
end
