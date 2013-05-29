class Challenge < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  has_many :challenge_completions
  has_many :users, :through => :challenge_completions
  belongs_to :challenge_category
  
  validates_presence_of :challenge_category_id
  validates_presence_of :max_members
  validates_presence_of :min_members
  validates_presence_of :member_count
  validates_presence_of :points
  validates_presence_of :repeatable_after
  validates_presence_of :repeatable_every
  validates_presence_of :team_count
  validates_presence_of :title
  validates_presence_of :user_id
  validates_presence_of :view_count

  attr_accessible :max_members, :min_members, :member_count, :points, :repeatable_every, :repeatable_after, :team_count, :title
  
  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
    self.view_count = 1
  end

  def update_timestamps
    self.modified = Time.now
  end
end
