class Page < ActiveRecord::Base

  validates_presence_of :title, :name, :body
  validates_uniqueness_of :name

  before_validation :prepare_attributes_for_save

  def prepare_attributes_for_save
   self.title = title.parameterize
   self.name = name.parameterize
  end

  def find_sub_page(sub_page_name)
    Page.find_by_name_and_parent_page_id(sub_page_name, id)
  end

  scope :parents, where('parent_page_id IS NULL')

  scope :sub_pages, lambda { |page_id| where('parent_page_id = ?', page_id) }


end
