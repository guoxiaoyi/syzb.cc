class AddMobileContentToWizcmsArticlePage < ActiveRecord::Migration
  def change
    add_column :wizcms_article_pages, :mobile_content, :text
  end
end
