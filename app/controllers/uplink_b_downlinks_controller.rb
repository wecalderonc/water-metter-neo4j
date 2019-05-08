class UplinkBDownlinksController < ApplicationController
  before_action :set_uplink_b_downlink, only: [:show, :edit, :update, :destroy]

  # GET /uplink_b_downlinks
  # GET /uplink_b_downlinks.json
  def index
    @uplink_b_downlinks = UplinkBDownlink.all
  end

  # GET /uplink_b_downlinks/1
  # GET /uplink_b_downlinks/1.json
  def show
  end

  # GET /uplink_b_downlinks/new
  def new
    @uplink_b_downlink = UplinkBDownlink.new
  end

  # GET /uplink_b_downlinks/1/edit
  def edit
  end

  # POST /uplink_b_downlinks
  # POST /uplink_b_downlinks.json
  def create
    @uplink_b_downlink = UplinkBDownlink.new(uplink_b_downlink_params)

    respond_to do |format|
      if @uplink_b_downlink.save
        format.html { redirect_to @uplink_b_downlink, notice: 'Uplink b downlink was successfully created.' }
        format.json { render :show, status: :created, location: @uplink_b_downlink }
      else
        format.html { render :new }
        format.json { render json: @uplink_b_downlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uplink_b_downlinks/1
  # PATCH/PUT /uplink_b_downlinks/1.json
  def update
    respond_to do |format|
      if @uplink_b_downlink.update(uplink_b_downlink_params)
        format.html { redirect_to @uplink_b_downlink, notice: 'Uplink b downlink was successfully updated.' }
        format.json { render :show, status: :ok, location: @uplink_b_downlink }
      else
        format.html { render :edit }
        format.json { render json: @uplink_b_downlink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uplink_b_downlinks/1
  # DELETE /uplink_b_downlinks/1.json
  def destroy
    @uplink_b_downlink.destroy
    respond_to do |format|
      format.html { redirect_to uplink_b_downlinks_url, notice: 'Uplink b downlink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uplink_b_downlink
      @uplink_b_downlink = UplinkBDownlink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uplink_b_downlink_params
      params.require(:uplink_b_downlink).permit(:value, :uplink_id)
    end
end
