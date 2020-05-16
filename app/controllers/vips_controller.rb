class VipsController < ApplicationController
  before_action :is_tourist
  before_action :set_vip, only: [:show, :edit, :update, :destroy]

  # GET /vips
  # GET /vips.json
  def index
    @vips = Vip.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vip
      @vip = Vip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vip_params
      params.require(:vip).permit(:name, :levels, :price, :parent_id)
    end
end
