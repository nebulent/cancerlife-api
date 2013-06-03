class Usertreatmentdosage < ActiveRecord::Base
  before_create :update_timestamps
  before_update :update_modified_time

  validates_presence_of :days
  validates_presence_of :dosage
  validates_presence_of :time
  validates_presence_of :user_treatment_id
  
  attr_accessible :days, :dosage, :time 

  def update_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_modified_time
    self.modified = Time.now
  end
end
