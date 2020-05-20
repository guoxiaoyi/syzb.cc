class Admin::PeopleController < Admin::ApplicationController
  before_action :set_person, only: [:show, :edit, :update, :destroy]

  # GET /admin/people
  # GET /admin/people.json
  def index
    @people = Person.all
  end

  # GET /admin/people/1
  # GET /admin/people/1.json
  def show
  end

  # GET /admin/people/new
  def new
    @person = Person.new
  end

  # GET /admin/people/1/edit
  def edit
  end

  # POST /admin/people
  # POST /admin/people.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save
        format.html { redirect_to [:admin, @person], notice: 'Person was successfully created.' }
        format.json { render action: 'show', status: :created, location: @person }
      else
        format.html { render action: 'new' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/people/1
  # PATCH/PUT /admin/people/1.json
  def update
    respond_to do |format|
      if @person.update(person_params)
        format.html { redirect_to [:admin, @person], notice: 'Person was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/people/1
  # DELETE /admin/people/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { redirect_to admin_people_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_params
      params.require(:person).permit(:name, :nianji, :city, :email, :leixing, :content)
    end
end
