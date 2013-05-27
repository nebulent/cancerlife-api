class Post < ActiveRecord::Base
  self.table_name = "wp_posts"
  belongs_to :user
  has_many :post_metas
  before_save :create_timestamps
  after_save :update_timestamps

  alias_attribute :author,       :post_author
  alias_attribute :date,         :post_date
  alias_attribute :date_gmt,     :post_date_gmt
  alias_attribute :content,      :post_content
  alias_attribute :title,        :post_title
  alias_attribute :excerpt,      :post_excerpt
  alias_attribute :status,       :post_status
  alias_attribute :password,     :post_password
  alias_attribute :name,         :post_name
  alias_attribute :modified,     :post_modified
  alias_attribute :modified_gmt, :post_modified_gmt
  alias_attribute :content_filt, :post_content_filtered
  alias_attribute :parent,       :post_parent
  alias_attribute :type,         :post_type
  alias_attribute :mime_type,    :post_mime_type

  def create_timestamps
    self.date = Time.now
    self.date_gmt = Time.now.utc
  end

  def update_timestamps
    self.modified = Time.now
    self.modified_gmt = Time.now.utc
  end
end
