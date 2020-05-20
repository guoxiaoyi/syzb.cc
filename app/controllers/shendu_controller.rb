class ShenduController < ApplicationController
  def index
    @page = WizcmsArticle::Page.get(:shendu)
  end
end
