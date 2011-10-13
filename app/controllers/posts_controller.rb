class PostsController < ApplicationController
  expose(:page)
  expose(:posts) { page.posts }
end
