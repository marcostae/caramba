class CombinisController < ApplicationController
  before_action :set_combini, only: [:show, :edit, :update, :destroy]

  protect_from_forgery :except => :create

  # GET /combinis
  # GET /combinis.json
  def index
    @combinis = Combini.all
    respond_to do |format|
      format.html
      format.json { render json: @combinis }
    end
  end

  # GET /combinis/1
  # GET /combinis/1.json
  def show
    respond_to do |format|
      format.html
      format.json { render json: @combini }
    end
  end

  # GET /combinis/new
  def new
    @combini = Combini.new
  end

  # GET /combinis/1/edit
  def edit
  end

  # POST /combinis
  # POST /combinis.json
  def create
    @combini = Combini.new(combini_params)

    respond_to do |format|
      if @combini.save
        format.html { redirect_to @combini, notice: 'Combini was successfully created.' }
        format.json { render action: 'show', status: :created, location: @combini }
      else
        format.html { render action: 'new' }
        format.json { render json: @combini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /combinis/1
  # PATCH/PUT /combinis/1.json
  def update
    respond_to do |format|
      if @combini.update(combini_params)
        format.html { redirect_to @combini, notice: 'Combini was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @combini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /combinis/1
  # DELETE /combinis/1.json
  def destroy
    @combini.destroy
    respond_to do |format|
      format.html { redirect_to combinis_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_combini
      @combini = Combini.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def combini_params
      params.require(:combini).permit(:user_id, :typegroup_id, :type_id, :photo, :comment, :latitude, :longitude)
      # params[:combini]
    end
end
