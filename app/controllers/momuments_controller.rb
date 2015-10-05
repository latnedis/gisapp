class MomumentsController < ApplicationController
  before_action :set_momument, only: [:show, :edit, :update, :destroy]

  # GET /momuments
  # GET /momuments.json
  def index
    @momuments = Momument.all
  end

  # GET /momuments/1
  # GET /momuments/1.json
  def show
  end

  # GET /momuments/new
  def new
    @momument = Momument.new
  end

  # GET /momuments/1/edit
  def edit
  end

  # POST /momuments
  # POST /momuments.json
  def create
    @momument = Momument.new(momument_params)

    respond_to do |format|
      if @momument.save
        format.html { redirect_to @momument, notice: 'Momument was successfully created.' }
        format.json { render :show, status: :created, location: @momument }
      else
        format.html { render :new }
        format.json { render json: @momument.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /momuments/1
  # PATCH/PUT /momuments/1.json
  def update
    respond_to do |format|
      if @momument.update(momument_params)
        format.html { redirect_to @momument, notice: 'Momument was successfully updated.' }
        format.json { render :show, status: :ok, location: @momument }
      else
        format.html { render :edit }
        format.json { render json: @momument.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /momuments/1
  # DELETE /momuments/1.json
  def destroy
    @momument.destroy
    respond_to do |format|
      format.html { redirect_to momuments_url, notice: 'Momument was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_momument
      @momument = Momument.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def momument_params
      params.require(:momument).permit(:code, :alternative_name, :culture, :monument_type, :description, :length, :width, :approximate_area, :photo, :architectural_style, :technical_condition, :material)
    end
end
