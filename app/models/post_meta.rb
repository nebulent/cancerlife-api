class PostMeta < ActiveRecord::Base
  self.table_name = "wp_postmeta"
  belongs_to :post

  alias_attribute :id, :meta_id
  alias_attribute :key, :meta_key
  alias_attribute :value, :meta_value
  
end
