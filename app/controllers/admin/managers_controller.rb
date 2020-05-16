class Admin::ManagersController < Admin::ApplicationController
  before_action :set_manager, only: [:show, :edit, :update, :destroy]

  # GET /admin/managers
  # GET /admin/managers.json
  def index
    @managers = Manager.all.page(params[:page])
  end

  # GET /admin/managers/1
  # GET /admin/managers/1.json
  def show
  end

  # GET /admin/managers/new
  def new
    @manager = Manager.new
  end

  # GET /admin/managers/1/edit
  def edit
  end

  # POST /admin/managers
  # POST /admin/managers.json
  def create
    @manager = Manager.new(manager_params)

    respond_to do |format|
      if @manager.save
        format.html { redirect_to [:admin, @manager], notice: 'Manager was successfully created.' }
        format.json { render action: 'show', status: :created, location: @manager }
      else
        format.html { render action: 'new' }
        format.json { render json: @manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/managers/1
  # PATCH/PUT /admin/managers/1.json
  def update

    # authority = params[:authority].blank? ? '' : params[:authority].join(',')
    respond_to do |format|
      if @manager.update(manager_params)
        format.html { redirect_to [:admin, @manager], notice: 'Manager was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/managers/1
  # DELETE /admin/managers/1.json
  def destroy
    @manager.destroy
    respond_to do |format|
      format.html { redirect_to admin_managers_url, notice: 'Manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manager
      @manager = Manager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manager_params
      # d = if params[:authority].blank?
      #   ''
      # else
      #   params[:authority].join(',')
      # end
      # d = d.insert(-1, ',application')
      params.require(:manager).permit(:name, :email, :password, :password_confirmation, :supper, :disabled)
      # a.merge(authority: d)
    end
end
