class Country < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps
  has_many :states

  validates_presence_of :iso
  validates_uniqueness_of :iso
  validates_presence_of :name

  attr_accessible :name, :iso

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
