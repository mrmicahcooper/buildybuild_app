class Post < ActiveRecord::Base
  belongs_to :page, dependent: :destroy

  validates_presence_of :title, :body
end
