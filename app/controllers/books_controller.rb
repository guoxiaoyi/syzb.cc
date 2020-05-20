class BooksController < ApplicationController
  def show
    @article = WizcmsArticle::Article.get( params[:id] )
    @article_categories =  WizcmsArticle::ArticleCategory.get(:book)
    @articles = @article_categories.get_articles
  end
end
