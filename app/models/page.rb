class Page < ActiveRecord::Base

  validates_presence_of :title, :name, :body

  before_save :prepare_attributes_for_save

  def prepare_attributes_for_save
   self.title = title.parameterize
   self.name = name.parameterize
  end

end
