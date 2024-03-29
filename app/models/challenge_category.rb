class ChallengeCategory < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  validates_presence_of :challenge_count
  validates_presence_of :title
  
  has_many :challenges
  
  attr_accessible :challenge_count, :title

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
