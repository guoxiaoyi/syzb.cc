class CorpvideoController < ApplicationController
  def index
    @videos = WizcmsArticle::ArticleCategory.get(:video).get_articles
  end
  def show
    @video = WizcmsArticle::Article.get( params[:id] )
  end
end
