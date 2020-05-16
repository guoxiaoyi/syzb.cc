require_dependency "wizcms_link/admin/application_controller"

module WizcmsLink
  class Admin::LinksController < Admin::ApplicationController
    before_action :set_link, only: [:show, :edit, :update, :destroy]

    # GET /admin/links
    def index
      @links = Link.all.order('updated_at').page(params[:page])
    end

    # GET /admin/links/1
    def show
    end

    # GET /admin/links/new
    def new
      @link = Link.new
    end

    # GET /admin/links/1/edit
    def edit
    end

    # POST /admin/links
    def create
      @link = Link.new(link_params)

      if @link.save
        redirect_to [:admin,@link], notice: 'Link was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /admin/links/1
    def update
      if @link.update(link_params)
        redirect_to [:admin,@link], notice: 'Link was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /admin/links/1
    def destroy
      @link.destroy
      redirect_to admin_links_url, notice: 'Link was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_link
        @link = Link.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def link_params
        params.require(:link).permit(:title, :url, :image, :published,:custom_order, :category_id, :cite_key)
      end
  end
end
