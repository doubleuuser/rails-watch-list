class BookmarksController < ApplicationController
  before_action :set_list, only: [:show]


  def index
    @bookmarks = Bookmark.all
  end

  def new
    @bookmark = Bookmark.new
  end

  def show
    set_bookmark
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    # how to get the associations?
    @bookmark.save
    redirect_to bookmarks_path(@bookmark)
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie, :list)
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end
end
