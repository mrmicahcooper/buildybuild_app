class Page < ActiveRecord::Base

  validates_presence_of :title, :name, :body
  validates_uniqueness_of :name

  before_validation :prepare_attributes_for_save

  def prepare_attributes_for_save
   self.title = title.parameterize
   self.name = name.parameterize
  end

end
