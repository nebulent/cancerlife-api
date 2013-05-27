class SideEffect < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  validates_presence_of :measurable
  validates_presence_of :name
  validates_presence_of :sort

  attr_accessible :measurable, :name, :sort

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
