class SiblingsController < ApplicationController
  before_action :set_sibling, only: [:show, :edit, :update, :destroy]

  # GET /siblings
  # GET /siblings.json
  def index
    @siblings = Sibling.all
  end

  # GET /siblings/1
  # GET /siblings/1.json
  def show
  end

  # GET /siblings/new
  def new
    @sibling = Sibling.new
  end

  # GET /siblings/1/edit
  def edit
  end

  # POST /siblings
  # POST /siblings.json
  def create
    @sibling = Sibling.new(sibling_params)

    respond_to do |format|
      if @sibling.save
        format.html { redirect_to @sibling, notice: 'Sibling was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sibling }
      else
        format.html { render action: 'new' }
        format.json { render json: @sibling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /siblings/1
  # PATCH/PUT /siblings/1.json
  def update
    respond_to do |format|
      if @sibling.update(sibling_params)
        format.html { redirect_to @sibling, notice: 'Sibling was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sibling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siblings/1
  # DELETE /siblings/1.json
  def destroy
    @sibling.destroy
    respond_to do |format|
      format.html { redirect_to siblings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sibling
      @sibling = Sibling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sibling_params
      params.require(:sibling).permit(:first_name, :last_name, :grade)
    end
end
