class City < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps
  
  belongs_to :state
  has_many :organizations

  validates_presence_of :name
  validates_presence_of :slug
  validates_presence_of :state_id

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
