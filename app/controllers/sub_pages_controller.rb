class SubPagesController < PagesController
  expose(:current_sub_page){ SubPage.find_by_name(params[:sub_page_name]) }
  expose(:website_title) { current_sub_page.title if current_sub_page }
end
