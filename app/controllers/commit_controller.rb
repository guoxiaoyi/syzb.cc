class CommitController < ApplicationController
  def index
    @page = WizcmsArticle::Page.get(:commit)
  end
end
