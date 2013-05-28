class Alert < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  has_many :alert_cancer_types
  has_many :cancer_types, :through => :alert_cancer_types
  has_many :alert_side_effects
  has_many :side_effects, :through => :alert_side_effects

  validates_presence_of :organization_id
  validates_presence_of :severity

  attr_accessible :severity

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
  end

  def update_timestamps
    self.modified = Time.now
  end
end
