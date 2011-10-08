class SubPagesController < PagesController
  expose(:current_sub_page){ SubPage.find_by_name(params[:sub_page]) || ParentPage.first }
  expose(:website_title) { current_sub_page.title }
end
