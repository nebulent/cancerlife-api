class SiteInvitation < ActiveRecord::Base
  before_create :update_timestamps
  before_update :update_modified_time

  validates_presence_of :email
  validates_presence_of :organization_id
  validates_presence_of :status
  validates_presence_of :token

  attr_accessible :email, :status, :token
  
  def update_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_modified_time
    self.modified = Time.now
  end
end
