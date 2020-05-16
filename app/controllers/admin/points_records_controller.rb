class Admin::PointsRecordsController < Admin::ApplicationController
  before_action :set_user
  before_action :set_points_record, only: [:show, :edit, :update, :destroy]

  # GET /admin/points_records
  # GET /admin/points_records.json
  def index
    @points_records = @user.points_records.all
  end

  # GET /admin/points_records/1
  # GET /admin/points_records/1.json
  def show
  end

  # GET /admin/points_records/new
  def new
    @points_record =  @user.points_records.new
  end

  # GET /admin/points_records/1/edit
  def edit
  end

  # POST /admin/points_records
  # POST /admin/points_records.json
  def create
    @points_record = @user.points_records.new(points_record_params)

    respond_to do |format|
      if @points_record.save
        @points_record.update(balance: @user.balance)
        format.html { redirect_to [:admin, @user, :points_records], notice: 'Points record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @points_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @points_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/points_records/1
  # DELETE /admin/points_records/1.json
  def destroy
    @points_record.destroy
    respond_to do |format|
      format.html { redirect_to admin_points_records_url, notice: 'Points record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:user_id])
    end
    def set_points_record
      @points_record = @user.points_records.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def points_record_params
      params.require(:points_record).permit(:user_id, :points, :title, :brief)
    end
end
