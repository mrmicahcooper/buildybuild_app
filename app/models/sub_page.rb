class SubPage < Page
  belongs_to :parent_page
  belongs_to :page

  default_scope where('page_id IS NOT NULL and page_id <> id')

  def is_current?
    # true if current_sub_page.name == self.sub_page.name
  end

end
