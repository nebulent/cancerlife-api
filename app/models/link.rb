class Link < ActiveRecord::Base
  self.table_name = "wp_links"
  belongs_to :user
  after_save :update_timestamps

  alias_attribute :id,          :link_id
  alias_attribute :url,         :link_url
  alias_attribute :name,        :link_name
  alias_attribute :image,       :link_image
  alias_attribute :target,      :link_target
  alias_attribute :description, :link_description
  alias_attribute :visible,     :link_visible
  alias_attribute :owner,       :link_owner
  alias_attribute :rating,      :link_rating
  alias_attribute :updated,     :link_updated
  alias_attribute :rel,         :link_rel
  alias_attribute :notes,       :link_notes
  alias_attribute :rss,         :link_rss

  def update_timestamps
    self.updated = Time.now
  end
end
