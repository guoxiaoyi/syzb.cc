class NewsController < ApplicationController
  def index
    @article_categories =  WizcmsArticle::ArticleCategory.get(:news)
    @articles = if params[:cid].blank?
      @article_categories.get_articles_with_chidren
    else
      @article_categories.children.find(params[:cid]).get_articles
    end

  end

  def show
    @article_categories =  WizcmsArticle::ArticleCategory.get(:news)
    @article = WizcmsArticle::Article.get( params[:id] )
  end
end
