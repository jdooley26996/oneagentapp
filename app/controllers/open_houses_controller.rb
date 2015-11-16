class OpenHousesController < ApplicationController
  before_action :set_open_house, only: [:show, :edit, :update, :destroy]

  # GET /open_houses
  # GET /open_houses.json
  def index
    @open_houses = current_user.open_houses.all
  end

  # GET /open_houses/1
  # GET /open_houses/1.json
  def show
  end

  # GET /open_houses/new
  def new
    @open_house = current_user.open_houses.new
  end

  # GET /open_houses/1/edit
  def edit
  end

  # POST /open_houses
  # POST /open_houses.json
  def create
    @open_house = current_user.open_houses.new(open_house_params)

    respond_to do |format|
      if @open_house.save
        format.html { redirect_to @open_house, notice: 'Open house was successfully created.' }
        format.json { render :show, status: :created, location: @open_house }
      else
        format.html { render :new }
        format.json { render json: @open_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /open_houses/1
  # PATCH/PUT /open_houses/1.json
  def update
    respond_to do |format|
      if @open_house.update(open_house_params)
        format.html { redirect_to @open_house, notice: 'Open house was successfully updated.' }
        format.json { render :show, status: :ok, location: @open_house }
      else
        format.html { render :edit }
        format.json { render json: @open_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /open_houses/1
  # DELETE /open_houses/1.json
  def destroy
    @open_house.destroy
    respond_to do |format|
      format.html { redirect_to open_houses_url, notice: 'Open house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open_house
      @open_house = current_user.open_houses.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_house_params
      params.require(:open_house).permit(:Name, :Phone_number, :Email_address, :How_did_you_here_about_our_open_house, :Are_you_working_with_a_Realtor, :Realtors_name_and_contact_information, :Would_you_like_to_be_emailed_new_properties)
    end
end
