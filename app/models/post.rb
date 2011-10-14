class Post < ActiveRecord::Base
  belongs_to :page, dependent: :destroy

  validates_presence_of :title, :body

  scope :published, where('published_at <= now()')

  def publish_date
    return Date.today.to_s(:pretty) if self.new_record?
    published_at.nil? ? nil : self.published_at.to_s(:pretty)
  end
end
