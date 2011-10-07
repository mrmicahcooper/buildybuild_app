class SubPagesController < PagesController

  expose(:linked_sub_page){ SubPage.find_by_name(params[:sub_page]) || ParentPage.first }
end
