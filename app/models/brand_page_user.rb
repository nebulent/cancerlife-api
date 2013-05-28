class BrandPageUser < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  belongs_to :user
  belongs_to :brand_page
  
  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
