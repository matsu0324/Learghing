class SearchController < ApplicationController
  before_action :authenticate_user!

  def search
    return if params[:content].blank?

    @model = params[:model]
    @content = params[:content]
    @method = params[:method]
    if @model == 'user'
      @records = User.search_for(@content, @method)
    elsif @model == 'post'
      @records = Post.search_for(@content, @method)
    end
  end
end
