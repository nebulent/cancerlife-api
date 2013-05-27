class Term < ActiveRecord::Base
  self.table_name = "wp_terms"

  has_and_belongs_to_many :term_taxonomies, :join_table => "wp_term_relationships", :foreign_key => :object_id

  alias_attribute :id, :term_id
  alias_attribute :group, :term_group
end
