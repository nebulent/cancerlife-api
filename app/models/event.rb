class Event < ActiveRecord::Base
  before_create :create_timestamps
  before_update :update_timestamps

  belongs_to :brand_page
  belongs_to :message
  belongs_to :user
  
  validates_presence_of :brand_page_id
  validates_presence_of :end_time
  validates_presence_of :start_time
  validates_presence_of :message_id
  validates_presence_of :name
  validates_presence_of :user_id
  validates_presence_of :venue

  attr_accessible :end_time, :start_time, :name, :venue

  def create_timestamps
    self.created = Time.now
    self.modified = Time.now
    self.is_public = true
  end

  def update_timestamps
    self.modified = Time.now
  end
end
