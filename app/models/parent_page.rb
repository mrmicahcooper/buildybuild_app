class ParentPage < Page
  has_many :sub_pages, foreign_key: 'page_id', dependent: :destroy

  default_scope where("page_id IS NULL")

end
