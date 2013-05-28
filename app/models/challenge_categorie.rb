class ChallengeCategorie < ActiveRecord::Base
  before_create :update_timestamps
  before_update :update_modified_time

  validates_presence_of :challenge_count
  validates_presence_of :title
  
  attr_accessible :challenge_count, :title

  def update_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_modified_time
    self.modified = Time.now
  end
end
