class WishlistItem < ActiveRecord::Base
  before_create :update_timestamps
  before_update :update_modified_time

  validates_presence_of :datetime
  validates_presence_of :name
  validates_presence_of :user_id
  
  attr_accessible :datetime, :name

  def update_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_modified_time
    self.modified = Time.now
  end
end
