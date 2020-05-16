class Admin::NodesController < Admin::ApplicationController
  before_action :set_node, only: [:show, :edit, :update, :destroy]

  # GET /admin/nodes
  # GET /admin/nodes.json
  def index
    @nodes = current_manager.nodes.all
  end

  # GET /admin/nodes/1
  # GET /admin/nodes/1.json
  def show
  end

  # GET /admin/nodes/new
  def new
    @node = current_manager.nodes.new
  end

  # GET /admin/nodes/1/edit
  def edit
  end

  # POST /admin/nodes
  # POST /admin/nodes.json
  def create
    @node = current_manager.nodes.new(node_params)

    respond_to do |format|
      if @node.save
        format.html { redirect_to [:admin, @node], notice: 'Node was successfully created.' }
        format.json { render action: 'show', status: :created, location: @node }
      else
        format.html { render action: 'new' }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/nodes/1
  # PATCH/PUT /admin/nodes/1.json
  def update
    p @node
    respond_to do |format|
      if @node.update(node_params)
        format.html { redirect_to [:admin, @node], notice: 'Node was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @node.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/nodes/1
  # DELETE /admin/nodes/1.json
  def destroy
    @node.destroy
    respond_to do |format|
      format.html { redirect_to admin_nodes_url, notice: 'Node was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_node
      @node = current_manager.nodes.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def node_params
      params.require(:node).permit(:title)
    end
end
