class Page < ActiveRecord::Base

  validates_presence_of :title, :name
  validates_uniqueness_of :name
  has_many :sub_pages
  has_many :posts

  before_validation :prepare_attributes_for_save

  scope :published, where('published_at <= now()')

  def has_no_children
    self.sub_pages.empty?
  end

  def prepare_attributes_for_save
   self.name = name.parameterize
  end

  def publish_date
    return Date.today.to_s(:pretty) if self.new_record?
    published_at.nil? ? nil : self.published_at.to_s(:pretty)
  end

end
