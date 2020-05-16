class Admin::RepliesController < Admin::ApplicationController
  before_action :set_reply, only: [:show, :edit, :update, :destroy]

  # GET /admin/replies
  # GET /admin/replies.json
  def index
    @replies = Replie.all
  end

  # GET /admin/replies/1
  # GET /admin/replies/1.json
  def show
  end

  # GET /admin/replies/new
  def new
    @reply = Replie.new
  end

  # GET /admin/replies/1/edit
  def edit
  end

  # POST /admin/replies
  # POST /admin/replies.json
  def create
    @reply = Replie.new(reply_params)

    respond_to do |format|
      if @reply.save
        format.html { redirect_to [:admin, @reply], notice: 'Replie was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reply }
      else
        format.html { render action: 'new' }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/replies/1
  # PATCH/PUT /admin/replies/1.json
  def update
    respond_to do |format|
      if @reply.update(reply_params)
        format.html { redirect_to [:admin, @reply], notice: 'Replie was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/replies/1
  # DELETE /admin/replies/1.json
  def destroy
    @reply.destroy
    respond_to do |format|
      format.html { redirect_to admin_replies_url, notice: 'Replie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reply
      @reply = Replie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reply_params
      params.require(:reply).permit(:topic_id, :user_id, :content)
    end
end
