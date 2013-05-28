class AlertCancerType < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  belongs_to :alert
  belongs_to :cancer_type

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
    self.is_public = true
  end

  def update_timestamps
    self.modified = Time.now
  end
end
