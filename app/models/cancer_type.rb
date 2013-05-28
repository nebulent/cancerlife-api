class CancerType < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  has_many :alert_cancer_types
  has_many :alerts, :through => :alert_cancer_types

  validates_presence_of :name
  validates_presence_of :user_count

  attr_accessible :name, :user_count
  
  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
