class SubPage < Page
  belongs_to :page, foreign_key: "parent_page_id"
end
