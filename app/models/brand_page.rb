class BrandPage < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  has_many :brand_page_users
  has_many :users, :through => :brand_page_users
  
  validates_presence_of :name
  validates_presence_of :organization_id
  validates_presence_of :screen_name

  attr_accessible :name, :screen_name

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
