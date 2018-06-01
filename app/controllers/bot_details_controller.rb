class Api::V1::BotDetailsController < ApplicationController
  before_action :set_bot_detail, only: [:show, :update, :destroy]

  # GET /bot_details
  def index
    @bot_details = BotDetail.all

    render json: @bot_details
  end

  # GET /bot_details/1
  def show
    render json: @bot_detail
  end

  # POST /bot_details
  def create
    @bot_detail = BotDetail.new(bot_detail_params)

    if @bot_detail.save
      render json: @bot_detail, status: :created, location: @bot_detail
    else
      render json: @bot_detail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bot_details/1
  def update
    if @bot_detail.update(bot_detail_params)
      render json: @bot_detail
    else
      render json: @bot_detail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bot_details/1
  def destroy
    @bot_detail.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bot_detail
      @bot_detail = BotDetail.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bot_detail_params
      params.require(:bot_detail).permit(:GpsProvider, :RouteId, :VCV_NO, :MaterialOutTime, :VehicleNo, :RouteCode, :Origin, :Destination, :CurrentLatLon, :DestLatLon, :DataPingTime, :TransitTime, :PlannedETA, :OriginAddress, :DestAddress, :DurValue, :DurText, :DisValue, :DisText, :LoadingMins, :DisMins, :ActualETA, :DataInsertedTime, :FlagValue, :OrgLat, :OrgLon, :CurrentLat, :CurrentLon, :DestLat, :DestLon, :VehicleHaltFlag, :RouteDeviationFlag, :VehicleHaltMinutes, :ScheduleId, :OnTime, :Delay, :Speed, :NightDrivingFlag, :CreatedDateTime, :ServiceProvideCode, :ServiceProvideName)
    end
end
