class SiteInvitation < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  belongs_to :organization

  validates_presence_of :email
  validates_presence_of :organization_id
  validates_presence_of :status
  validates_presence_of :token

  attr_accessible :email, :status, :token
  
  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
