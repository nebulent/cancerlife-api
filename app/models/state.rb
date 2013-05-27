class State < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps
  
  has_many :organizations
  has_many :cities
  belongs_to :country

  validates_presence_of :name
  validates_presence_of :slug
  validates_presence_of :country_id

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
