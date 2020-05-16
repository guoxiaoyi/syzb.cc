require_dependency "wizcms_article/application_controller"

module WizcmsArticle
  class Admin::FilesController < Admin::ApplicationController
    before_action :set_file, only: [:show, :edit, :update, :destroy]

    # GET /admin/files
    # GET /admin/files.json
    def index
      @files = Kindeditor::Asset.all.page( params[:page] )
    end

    # GET /admin/files/1
    # GET /admin/files/1.json
    def show
    
    end

    # GET /admin/files/new
    def new
      @file = File.new
    end

    # GET /admin/files/1/edit
    def edit
    end

    # POST /admin/files
    # POST /admin/files.json
    def create
      @file = File.new(file_params)

      respond_to do |format|
        if @file.save
          format.html { redirect_to [:admin, @file], notice: 'File was successfully created.' }
          format.json { render action: 'show', status: :created, location: @file }
        else
          format.html { render action: 'new' }
          format.json { render json: @file.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/files/1
    # PATCH/PUT /admin/files/1.json
    def update
      respond_to do |format|
        if @file.update(file_params)
          format.html { redirect_to [:admin, @file], notice: 'File was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @file.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/files/1
    # DELETE /admin/files/1.json
    def destroy
      @file.destroy
      respond_to do |format|
        format.html { redirect_to admin_files_url, notice: 'File was successfully destroyed.' }
        format.json { head :no_content }
      end
    end


    def manager
      @file_list = []
      Kindeditor::Image.all.each do |i|
        hash = {}
        hash[:filename] = i.asset.url
        @file_list.push hash
      end
    
      @result = {}
      @result['moveup_dir_path'] = ''
      @result[:current_dir_path] = @current_dir_path
      @result[:current_url] = ""
      @result[:total_count] = @file_list.count
      @result[:file_list] = @file_list
    
      render json: @result
    end



    private
      # Use callbacks to share common setup or constraints between actions.
      def set_file
        @file = Kindeditor::Asset.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def file_params
        params[:file]
      end
  end
end
