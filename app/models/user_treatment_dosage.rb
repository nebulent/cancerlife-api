class UserTreatmentDosage < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  belongs_to :user_treatment
  
  validates_presence_of :days
  validates_presence_of :dosage
  validates_presence_of :time
  validates_presence_of :user_treatment_id
  
  attr_accessible :days, :dosage, :time 

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
