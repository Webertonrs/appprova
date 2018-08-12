class AddInstitutionToCoursesController < ApplicationController
  before_action :set_add_institution_to_course, only: [:show, :edit, :update, :destroy]

  # GET /add_institution_to_courses
  # GET /add_institution_to_courses.json
  def index
    @add_institution_to_courses = AddInstitutionToCourse.all
  end

  # GET /add_institution_to_courses/1
  # GET /add_institution_to_courses/1.json
  def show
  end

  # GET /add_institution_to_courses/new
  def new
    @add_institution_to_course = AddInstitutionToCourse.new
  end

  # GET /add_institution_to_courses/1/edit
  def edit
  end

  # POST /add_institution_to_courses
  # POST /add_institution_to_courses.json
  def create
    @add_institution_to_course = AddInstitutionToCourse.new(add_institution_to_course_params)

    respond_to do |format|
      if @add_institution_to_course.save
        format.html { redirect_to @add_institution_to_course, notice: 'Add institution to course was successfully created.' }
        format.json { render :show, status: :created, location: @add_institution_to_course }
      else
        format.html { render :new }
        format.json { render json: @add_institution_to_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_institution_to_courses/1
  # PATCH/PUT /add_institution_to_courses/1.json
  def update
    respond_to do |format|
      if @add_institution_to_course.update(add_institution_to_course_params)
        format.html { redirect_to @add_institution_to_course, notice: 'Add institution to course was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_institution_to_course }
      else
        format.html { render :edit }
        format.json { render json: @add_institution_to_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_institution_to_courses/1
  # DELETE /add_institution_to_courses/1.json
  def destroy
    @add_institution_to_course.destroy
    respond_to do |format|
      format.html { redirect_to add_institution_to_courses_url, notice: 'Add institution to course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_institution_to_course
      @add_institution_to_course = AddInstitutionToCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_institution_to_course_params
      params.require(:add_institution_to_course).permit(:institution_id)
    end
end
