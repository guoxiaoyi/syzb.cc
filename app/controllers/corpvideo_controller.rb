class CorpvideoController < ApplicationController
  def index
    @videos = WizcmsLink::Category.get(:video).links.page( params[:page] ).per(9)
  end
  def show
    @video = WizcmsLink::Link.find( params[:id] )
  end
end
