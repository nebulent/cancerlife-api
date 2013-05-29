class Comment < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  validates_presence_of :flag_count
  validates_presence_of :is_public
  validates_presence_of :model
  validates_presence_of :model_id
  validates_presence_of :status
  validates_presence_of :user_id
  
  attr_accessible :flag_count, :is_public, :model, :status

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
