class Admin::TopicsController < Admin::ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]

  # GET /admin/topics
  # GET /admin/topics.json
  def index
    @topics = Topic.all
  end

  # GET /admin/topics/1
  # GET /admin/topics/1.json
  def show
  end

  # GET /admin/topics/new
  def new
    @topic = Topic.new
  end

  # GET /admin/topics/1/edit
  def edit
  end

  # POST /admin/topics
  # POST /admin/topics.json
  def create
    @topic = Topic.new(topic_params)

    respond_to do |format|
      if @topic.save
        format.html { redirect_to [:admin, @topic], notice: 'Topic was successfully created.' }
        format.json { render action: 'show', status: :created, location: @topic }
      else
        format.html { render action: 'new' }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/topics/1
  # PATCH/PUT /admin/topics/1.json
  def update
    respond_to do |format|
      if @topic.update(topic_params)
        format.html { redirect_to [:admin, @topic], notice: 'Topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/topics/1
  # DELETE /admin/topics/1.json
  def destroy
    @topic.destroy
    respond_to do |format|
      format.html { redirect_to admin_topics_url, notice: 'Topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = Topic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topic_params
      params.require(:topic).permit(:node_id, :user_id, :title, :content)
    end
end
