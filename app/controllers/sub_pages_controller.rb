class SubPagesController < PagesController
  expose(:website_title) { current_sub_page.title.titleize if current_sub_page }
end
