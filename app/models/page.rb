class Page < ActiveRecord::Base

  validates_presence_of :title, :name, :body
  validates_uniqueness_of :name

  before_validation :prepare_attributes_for_save

  scope :published, where('published_at <= now()')

  def prepare_attributes_for_save
   self.title = title.parameterize
   self.name = name.parameterize
  end

  def publish_date
    return Date.today.to_s(:pretty) if self.new_record?
    published_at.nil? ? nil : self.published_at.to_s(:pretty)
  end

end
