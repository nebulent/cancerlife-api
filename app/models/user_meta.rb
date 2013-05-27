class UserMeta < ActiveRecord::Base
  self.table_name = "wp_usermeta"
  belongs_to :user

  alias_attribute :id, :umeta_id
  alias_attribute :key, :meta_key
  alias_attribute :value, :meta_value
end
