class DonatesController < ApplicationController
  before_action :is_tourist
  before_action :set_donate, only: [:show, :edit, :update, :destroy]

  # GET /donates
  # GET /donates.json
  def index
    @donates = current_user.donates
  end

  # GET /donates/1
  # GET /donates/1.json
  def show
  end

  # GET /donates/new
  def new
    @donate = current_user.donates.new
  end

  # GET /donates/1/edit
  def edit
  end

  # POST /donates
  # POST /donates.json
  def create
    @donate = current_user.donates.new(donate_params.merge(manager_id: current_user.manager_id))

    respond_to do |format|
      if @donate.save
        format.html { redirect_to @donate, notice: 'Donate was successfully created.' }
        format.json { render :show, status: :created, location: @donate }
      else
        format.html { render :new }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  def upload
    @donate = current_user.donates.find(params[:donate_id])
    res = @donate.pictures.build(url: params[:picture]).save

    render json: {status: res}
  end

  # PATCH/PUT /donates/1
  # PATCH/PUT /donates/1.json
  def update
    respond_to do |format|
      if @donate.update(donate_params)
        format.html { redirect_to @donate, notice: 'Donate was successfully updated.' }
        format.json { render :show, status: :ok, location: @donate }
      else
        format.html { render :edit }
        format.json { render json: @donate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donates/1
  # DELETE /donates/1.json
  def destroy
    @donate.destroy
    respond_to do |format|
      format.html { redirect_to donates_url, notice: 'Donate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donate
      @donate = Donate.find(params[:id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def donate_params
      params.require(:donate).permit(:content, :user_id, :manager_id,
        pictures_attributes: [ :_destroy, :id, :donate_id, :url ,:position])
    end
end
