class Sensor1sController < ApplicationController
  before_action :set_sensor1, only: [:show, :edit, :update, :destroy]

  # GET /sensor1s
  # GET /sensor1s.json
  def index
    @sensor1s = Sensor1.all
  end

  # GET /sensor1s/1
  # GET /sensor1s/1.json
  def show
  end

  # GET /sensor1s/new
  def new
    @sensor1 = Sensor1.new
  end

  # GET /sensor1s/1/edit
  def edit
  end

  # POST /sensor1s
  # POST /sensor1s.json
  def create
    @sensor1 = Sensor1.new(sensor1_params)

    respond_to do |format|
      if @sensor1.save
        format.html { redirect_to @sensor1, notice: 'Sensor1 was successfully created.' }
        format.json { render :show, status: :created, location: @sensor1 }
      else
        format.html { render :new }
        format.json { render json: @sensor1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor1s/1
  # PATCH/PUT /sensor1s/1.json
  def update
    respond_to do |format|
      if @sensor1.update(sensor1_params)
        format.html { redirect_to @sensor1, notice: 'Sensor1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor1 }
      else
        format.html { render :edit }
        format.json { render json: @sensor1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor1s/1
  # DELETE /sensor1s/1.json
  def destroy
    @sensor1.destroy
    respond_to do |format|
      format.html { redirect_to sensor1s_url, notice: 'Sensor1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor1
      @sensor1 = Sensor1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor1_params
      params.require(:sensor1).permit(:value, :uplink_id)
    end
end
