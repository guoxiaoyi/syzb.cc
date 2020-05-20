class ServiceController < ApplicationController
  def index
    @page_1 = WizcmsArticle::Page.get(:select)
    @page_2 = WizcmsArticle::Page.get(:question)
    @page_3 = WizcmsArticle::Page.get(:cases)
    @page_4 = WizcmsArticle::Page.get(:ff)
  end
end
