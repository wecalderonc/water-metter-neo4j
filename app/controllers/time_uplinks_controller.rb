class TimeUplinksController < ApplicationController
  before_action :set_time_uplink, only: [:show, :edit, :update, :destroy]

  # GET /time_uplinks
  # GET /time_uplinks.json
  def index
    @time_uplinks = TimeUplink.all
  end

  # GET /time_uplinks/1
  # GET /time_uplinks/1.json
  def show
  end

  # GET /time_uplinks/new
  def new
    @time_uplink = TimeUplink.new
  end

  # GET /time_uplinks/1/edit
  def edit
  end

  # POST /time_uplinks
  # POST /time_uplinks.json
  def create
    @time_uplink = TimeUplink.new(time_uplink_params)

    respond_to do |format|
      if @time_uplink.save
        format.html { redirect_to @time_uplink, notice: 'Time uplink was successfully created.' }
        format.json { render :show, status: :created, location: @time_uplink }
      else
        format.html { render :new }
        format.json { render json: @time_uplink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_uplinks/1
  # PATCH/PUT /time_uplinks/1.json
  def update
    respond_to do |format|
      if @time_uplink.update(time_uplink_params)
        format.html { redirect_to @time_uplink, notice: 'Time uplink was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_uplink }
      else
        format.html { render :edit }
        format.json { render json: @time_uplink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_uplinks/1
  # DELETE /time_uplinks/1.json
  def destroy
    @time_uplink.destroy
    respond_to do |format|
      format.html { redirect_to time_uplinks_url, notice: 'Time uplink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_uplink
      @time_uplink = TimeUplink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_uplink_params
      params.require(:time_uplink).permit(:value, :uplink_id)
    end
end
