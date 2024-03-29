class Viewing < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  validates_presence_of :count
  validates_presence_of :model
  validates_presence_of :model_id
  
  attr_accessible :model, :count

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
