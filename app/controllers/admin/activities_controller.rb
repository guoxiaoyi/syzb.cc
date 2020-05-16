class Admin::ActivitiesController < Admin::ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  # GET /admin/activities
  # GET /admin/activities.json
  def index
    @activities = Activity.all
  end

  # GET /admin/activities/1
  # GET /admin/activities/1.json
  def show
  end

  # GET /admin/activities/new
  def new
    @activity = current_manager.activities.new
  end

  # GET /admin/activities/1/edit
  def edit
  end

  # POST /admin/activities
  # POST /admin/activities.json
  def create
    @activity = category.activities.new(activity_params.merge(manager_id: current_manager.id))

    respond_to do |format|
      if @activity.save
        format.html { redirect_to [:admin, @activity], notice: 'Activity was successfully created.' }
        format.json { render action: 'show', status: :created, location: @activity }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/activities/1
  # PATCH/PUT /admin/activities/1.json
  def update
    respond_to do |format|
      if @activity.update(activity_params)
        format.html { redirect_to [:admin, @activity], notice: 'Activity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/activities/1
  # DELETE /admin/activities/1.json
  def destroy
    @activity.destroy
    respond_to do |format|
      format.html { redirect_to admin_activities_url, notice: 'Activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activity
      @activity = Activity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.require(:activity).permit(:title, :content, :customize_order, :start_time, :location, :description, :price, :picture, :hotspot, :categoryable_id)
    end

    def category
      if activity_params[:categoryable_id].blank?
        ItemCategory.new
      else
        ItemCategory.find(activity_params[:categoryable_id])
      end
    end
end
