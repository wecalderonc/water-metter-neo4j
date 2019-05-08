class ValvePositionsController < ApplicationController
  before_action :set_valve_position, only: [:show, :edit, :update, :destroy]

  # GET /valve_positions
  # GET /valve_positions.json
  def index
    @valve_positions = ValvePosition.all
  end

  # GET /valve_positions/1
  # GET /valve_positions/1.json
  def show
  end

  # GET /valve_positions/new
  def new
    @valve_position = ValvePosition.new
  end

  # GET /valve_positions/1/edit
  def edit
  end

  # POST /valve_positions
  # POST /valve_positions.json
  def create
    @valve_position = ValvePosition.new(valve_position_params)

    respond_to do |format|
      if @valve_position.save
        format.html { redirect_to @valve_position, notice: 'Valve position was successfully created.' }
        format.json { render :show, status: :created, location: @valve_position }
      else
        format.html { render :new }
        format.json { render json: @valve_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valve_positions/1
  # PATCH/PUT /valve_positions/1.json
  def update
    respond_to do |format|
      if @valve_position.update(valve_position_params)
        format.html { redirect_to @valve_position, notice: 'Valve position was successfully updated.' }
        format.json { render :show, status: :ok, location: @valve_position }
      else
        format.html { render :edit }
        format.json { render json: @valve_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valve_positions/1
  # DELETE /valve_positions/1.json
  def destroy
    @valve_position.destroy
    respond_to do |format|
      format.html { redirect_to valve_positions_url, notice: 'Valve position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valve_position
      @valve_position = ValvePosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valve_position_params
      params.require(:valve_position).permit(:value, :uplink_id)
    end
end
