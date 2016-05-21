class ImportsController < ApplicationController
  before_action :set_import, only: [:show, :edit, :update, :destroy]

  skip_before_filter :verify_authenticity_token  
  # GET /imports
  # GET /imports.json
  def index
   # @imports = Import.all
    render plain: :hello
  end

  def
    parameters /Users:
    
  end

  # GET /imports/1
  # GET /imports/1.json
  def show
  end

  # GET /imports/new
  def new
    logger.debug params 
  end

  # GET /imports/1/edit
  def edit
  end

  # POST /imports
  # POST /imports.json
  def create
    File.write('/Users/aiden/src/out.txt', params['Subject'])

    logger.debug "subject: " + params['Subject']
    render plain: :thanks
  end

  # PATCH/PUT /imports/1
  # PATCH/PUT /imports/1.json
  def update
    respond_to do |format|
      if @import.update(import_params)
        format.html { redirect_to @import, notice: 'Import was successfully updated.' }
        format.json { render :show, status: :ok, location: @import }
      else
        format.html { render :edit }
        format.json { render json: @import.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imports/1
  # DELETE /imports/1.json
  def destroy
    @import.destroy
    respond_to do |format|
      format.html { redirect_to imports_url, notice: 'Import was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_import
      @import = Import.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def import_params
      params.fetch(:import, {})
    end
end