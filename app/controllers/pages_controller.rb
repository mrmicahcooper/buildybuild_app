class PagesController < ApplicationController
  expose(:page) { Page.find_by_name(params[:action]) }
end
