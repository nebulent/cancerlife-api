class User < ActiveRecord::Base
  before_create :set_create_timestamps
  before_update :set_timestamps

  has_many :brand_page_users
  has_many :brand_pages, :through => :brand_page_users
  
  validates_presence_of :donate_info
  validates_presence_of :email
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :journal_reminder
  validates_presence_of :level
  validates_presence_of :password
  validates_presence_of :roles
  validates_presence_of :update_via_sms
  validates_presence_of :verified_email

  attr_accessible :email, :donate_info, :first_name, :last_name, :journal_reminder, :level, :verified_email, :password, :roles, :update_via_sms

  def set_timestamps
    self.modified = Time.now
    self.user_update_count += 1
  end

  def set_create_timestamps
    self.user_update_count = 1
    self.created = Time.now
    self.modified = Time.now
    self.points_redeemed = 0
    self.points_total = 0
  end
end
