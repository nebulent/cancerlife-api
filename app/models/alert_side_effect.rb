class AlertSideEffect < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  belongs_to :alert
  belongs_to :side_effect

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
