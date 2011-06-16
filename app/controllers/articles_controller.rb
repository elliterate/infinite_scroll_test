class ArticlesController < ApplicationController
  def index
    @page = (params[:page].presence || 1).to_i
    @articles = Article.paginate(:page => @page)
  end
end
