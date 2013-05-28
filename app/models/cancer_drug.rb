class CancerDrug < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  has_many :user_treatments
  
  validates_presence_of :name
  validates_presence_of :sort
  validates_presence_of :type
  validates_presence_of :user_count

  attr_accessible :name, :sort, :type, :user_count

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
