class User < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  has_many :brand_page_users
  has_many :brand_pages, :through => :brand_page_users
  has_many :challenge_completions
  has_many :challenges, :through => :challenge_completions
  has_many :challenge_members
  has_many :challenges, :through => :challenge_members
  has_many :user_friends
  has_many :friends, :through => :user_friends
  has_many :user_followers
  has_many :followers, :through => :user_followers
  has_many :user_treatments
  has_many :events
  has_many :goals
  has_many :messages
  has_many :reports
  has_many :rewards
  has_many :user_circles
  has_many :wishlist_items

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

  def completed_challenges
    User.joins(:challenge_completions).where(:id => self.id)
  end

  def update_timestamps
    self.modified = Time.now
    self.user_update_count += 1
  end

  def create_timestamps
    self.user_update_count = 1
    self.created = Time.now
    self.modified = Time.now
    self.points_redeemed = 0
    self.points_total = 0
  end
end
