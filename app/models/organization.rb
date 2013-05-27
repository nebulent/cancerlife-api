class Organization < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps
  belongs_to :country
  belongs_to :city
  belongs_to :state

  validates_presence_of :name
  validates_presence_of :type

  attr_accessible :name, :type

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
