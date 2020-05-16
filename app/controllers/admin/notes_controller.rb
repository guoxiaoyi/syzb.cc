class Admin::NotesController < Admin::ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /admin/notes
  # GET /admin/notes.json
  def index
    @notes = Note.all
  end

  # GET /admin/notes/1
  # GET /admin/notes/1.json
  def show
  end

  # GET /admin/notes/new
  def new
    @note = Note.new
  end

  # GET /admin/notes/1/edit
  def edit
  end

  # POST /admin/notes
  # POST /admin/notes.json
  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to [:admin, @note], notice: 'Note was successfully created.' }
        format.json { render action: 'show', status: :created, location: @note }
      else
        format.html { render action: 'new' }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/notes/1
  # PATCH/PUT /admin/notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to [:admin, @note], notice: 'Note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/notes/1
  # DELETE /admin/notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to admin_notes_url, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:title, :content, :recommendation, :price)
    end
end
