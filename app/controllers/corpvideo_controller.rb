class CorpvideoController < ApplicationController
  def index
    @videos = WizcmsLink::Category.get(:video).links
  end
  def show
    @video = WizcmsLink::Link.find( params[:id] )
  end
end
