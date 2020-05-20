class ContactController < ApplicationController
  def index
    @page = WizcmsArticle::Page.get(:contact)
  end
end
