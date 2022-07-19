class BookmarksController < ApplicationController
  def new
    @bookmarks = Bookmark.all
  end

  def create

  end

  def delete
    @bookmark.destroy
    redirect_to bookmarks_path
  end


end
