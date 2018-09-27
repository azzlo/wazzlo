class WaterDevisesController < ApplicationController
  before_action :set_water_devise, only: [:show, :edit, :update, :destroy]

  # GET /water_devises
  # GET /water_devises.json
  def index
    @water_devises = WaterDevise.all
  end

  # GET /water_devises/1
  # GET /water_devises/1.json
  def show
  end

  # GET /water_devises/new
  def new
    @water_devise = WaterDevise.new
  end

  # GET /water_devises/1/edit
  def edit
  end

  # POST /water_devises
  # POST /water_devises.json
  def create
    @water_devise = WaterDevise.new(water_devise_params)

    respond_to do |format|
      if @water_devise.save
        format.html { redirect_to @water_devise, notice: 'Water devise was successfully created.' }
        format.json { render :show, status: :created, location: @water_devise }
      else
        format.html { render :new }
        format.json { render json: @water_devise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /water_devises/1
  # PATCH/PUT /water_devises/1.json
  def update
    respond_to do |format|
      if @water_devise.update(water_devise_params)
        format.html { redirect_to @water_devise, notice: 'Water devise was successfully updated.' }
        format.json { render :show, status: :ok, location: @water_devise }
      else
        format.html { render :edit }
        format.json { render json: @water_devise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /water_devises/1
  # DELETE /water_devises/1.json
  def destroy
    @water_devise.destroy
    respond_to do |format|
      format.html { redirect_to water_devises_url, notice: 'Water devise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_water_devise
      @water_devise = WaterDevise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def water_devise_params
      params.require(:water_devise).permit(:name, :address, :location, :state, :lat, :long, :current_value)
    end
end
