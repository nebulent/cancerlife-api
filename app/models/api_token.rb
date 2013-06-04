class ApiToken < ActiveRecord::Base
  attr_accessible :access_key
  before_create :generate_access_token

  private

  def generate_access_token
    begin
      self.access_key = SecureRandom.hex
    end while self.class.exists?(:access_key => access_key)
  end
end
