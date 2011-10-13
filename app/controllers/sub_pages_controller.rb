class SubPagesController < PagesController
  expose(:website_title) { current_sub_page.title.titleize if current_sub_page }
  expose(:posts) { current_sub_page.posts }
end
