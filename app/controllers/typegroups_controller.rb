class TypegroupsController < ApplicationController
	  before_action :set_typegroup, only: [:show, :edit, :update, :destroy]

  # GET /typegroups
  # GET /typegroups.json
  def index
    @typegroups = Typegroup.all
    respond_to do |format|
      format.html
      format.json { render json: @typegroups }
    end
  end

  # GET /typegroups/1
  # GET /typegroups/1.json
  def show
    respond_to do |format|
      format.html
      format.json { render json: @typegroup }
    end
  end

  # GET /typegroups/new
  def new
    @typegroup = Typegroup.new
  end

  # GET /typegroups/1/edit
  def edit
  end

  # POST /typegroups
  # POST /typegroups.json
  def create
    @typegroup = Typegroup.new(typegroup_params)

    respond_to do |format|
      if @typegroup.save
        format.html { redirect_to @typegroup, notice: 'Typegroup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @typegroup }
      else
        format.html { render action: 'new' }
        format.json { render json: @typegroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /typegroups/1
  # PATCH/PUT /typegroups/1.json
  def update
    respond_to do |format|
      if @typegroup.update(typegroup_params)
        format.html { redirect_to @typegroup, notice: 'Typegroup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @typegroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /typegroups/1
  # DELETE /typegroups/1.json
  def destroy
    @typegroup.destroy
    respond_to do |format|
      format.html { redirect_to typegroups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_typegroup
      @typegroup = Typegroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def typegroup_params
      params[:typegroup]
    end
end
