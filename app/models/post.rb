class Post < ActiveRecord::Base
  belongs_to :page

  validates_presence_of :title, :body
end
