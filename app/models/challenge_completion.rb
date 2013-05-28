class ChallengeCompletion < ActiveRecord::Base
  before_create :create_timestamps

  belongs_to :challenge
  belongs_to :user
  
  validates_presence_of :completed

  attr_accessible :completed
  
  def create_timestamps
    self.created = Time.now
  end
end
