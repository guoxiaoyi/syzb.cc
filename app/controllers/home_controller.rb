class HomeController < ApplicationController
  def index
    @video = WizcmsLink::Link.where(cite_key: "home_video").first
  end
end