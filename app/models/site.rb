class Site < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates_presence_of :subdomain
  validates_uniqueness_of :subdomain
  validates_format_of :subdomain, :with => /^[a-z\d]+(-[a-z\d]+)*$/i

  attr_accessible :subdomain
end
