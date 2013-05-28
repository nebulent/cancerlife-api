class ChallengeMember < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  belongs_to :challenge
  belongs_to :user

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
