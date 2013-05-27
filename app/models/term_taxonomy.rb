class TermTaxonomy < ActiveRecord::Base
  self.table_name = "wp_term_taxonomy"

  has_and_belongs_to_many :terms, :join_table => "wp_term_relationships", :association_foreign_key => :object_id

  alias_attribute :id, :term_taxonomy_id
end
