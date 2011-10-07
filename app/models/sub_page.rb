class SubPage < Page
  belongs_to :parent_page

  default_scope where('page_id IS NOT NULL')
end
