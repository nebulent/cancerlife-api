class UserTreatment < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  has_one :user_treatment_dosage
  belongs_to :user
  belongs_to :cancer_drug
  
  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
