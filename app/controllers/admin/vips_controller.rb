class Admin::VipsController < Admin::ApplicationController
  before_action :set_vip, only: [:show, :edit, :update, :destroy]

  # GET /admin/vips
  # GET /admin/vips.json
  def index
    @vips = Vip.all
  end

  # GET /admin/vips/1
  # GET /admin/vips/1.json
  def show
  end

  # GET /admin/vips/new
  def new
    @vip = Vip.new
  end

  # GET /admin/vips/1/edit
  def edit
  end

  # POST /admin/vips
  # POST /admin/vips.json
  def create
    @vip = Vip.new(vip_params)

    respond_to do |format|
      if @vip.save
        format.html { redirect_to [:admin, @vip], notice: 'Vip was successfully created.' }
        format.json { render action: 'show', status: :created, location: @vip }
      else
        format.html { render action: 'new' }
        format.json { render json: @vip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/vips/1
  # PATCH/PUT /admin/vips/1.json
  def update
    respond_to do |format|
      if @vip.update(vip_params)
        format.html { redirect_to [:admin, @vip], notice: 'Vip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @vip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/vips/1
  # DELETE /admin/vips/1.json
  def destroy
    @vip.destroy
    respond_to do |format|
      format.html { redirect_to admin_vips_url, notice: 'Vip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vip
      @vip = Vip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vip_params
      params.require(:vip).permit(:name, :levels, :price, :parent_id, :content)
    end
end
