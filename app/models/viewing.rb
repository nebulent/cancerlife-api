class Viewing < ActiveRecord::Base
  before_create :update_timestamps
  before_update :update_modified_time

  validates_presence_of :count
  validates_presence_of :model
  validates_presence_of :model_id
  
  attr_accessible :model, :count

  def update_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_modified_time
    self.modified = Time.now
  end
end
