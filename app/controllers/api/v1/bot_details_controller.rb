class Api::V1::BotDetailsController < ApplicationController
  before_action :set_bot_detail, only: [:show, :update, :destroy]
  # before_action :set_bot_detail_with_vcv, only: [:show, :update, :destroy]

  # GET /bot_details
  def index
    @bot_details = BotDetail.all
    @bot_details = BotDetail.where("vcv_no = ?", params[:vcv_no]) if params[:vcv_no]
    @bot_details = BotDetail.where("gps_provider = ?", params[:gps_provider]) if params[:gps_provider]
    spn = params[:service_provider_name] if params[:service_provider_name]
    @bot_details = BotDetail.where("service_provider_name like ?", "%#{spn}%") if spn

    @bot_details = BotDetail.where("vcv_no = ? and service_provider_name like ?", params[:vcv_no],"%#{spn}%") if params[:service_provider_name] && params[:vcv_no]
    cwb = params[:cwb_no] if params[:cwb_no]
    @bot_details = BotDetail.where("vcv_no = ? and cwb_no like ?", params[:vcv_no],"%#{cwb}%") if params[:cwb_no] && params[:vcv_no]
    render json: @bot_details
    
  end

  # GET /bot_details/1
  def show
    render json: @bot_detail
  end

  # def search
  #   term = params[:term] || nil
  #   products = []
  #   products = BotDetail.where('ServiceProvideName LIKE ?', "%#{term}%") if term
  #   render json: products
  # end

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

    def set_bot_detail_with_vcv
      @bot_detail = BotDetail.where("VCV_NO?", params[:VCV_NO])
    end

    # Only allow a trusted parameter "white list" through.
    def bot_detail_params
      # params.require(:bot_detail).permit(:gps_provider, :RouteId, :vcv_no, :MaterialOutTime, :VehicleNo, :RouteCode, :Origin, :Destination, :CurrentLatLon, :DestLatLon, :DataPingTime, :TransitTime, :planned_eta, :OriginAddress, :DestAddress, :DurValue, :DurText, :DisValue, :DisText, :LoadingMins, :DisMins, :actual_eta, :DataInsertedTime, :FlagValue, :OrgLat, :OrgLon, :CurrentLat, :CurrentLon, :DestLat, :DestLon, :VehicleHaltFlag, :RouteDeviationFlag, :VehicleHaltMinutes, :ScheduleId, :OnTime, :Delay, :Speed, :NightDrivingFlag, :CreatedDateTime, :ServiceProvideCode, :service_provider_name)
      params.require(:bot_detail).permit(:vcv_no, :vcv_date_time, :gps_provider, :routeid, :routecode, :origin, :destination, :currentlatlon, :destlatlon, :datapingtime, :transittime, :planned_eta, :originaddress, :destaddress, :durvalue, :durtext, :disvalue, :distext, :actual_eta, :orglat, :orglon, :currentlat, :currentlon, :destlat, :destlon, :routedeviationflag, :ontime, :delay, :serviceprovidecode, :service_provider_name, :cwb_no, :cwb_date, :sales_contract, :customer_code, :customer_name, :vehicle_no, :item_code, :generating_loc, :generating_loc_des, :destination_loc, :destination_loc_des, :nature_of_movement, :consignor_name, :consignee_name, :consignor_part_code, :consignee_part_code, :number_of_package)
    end
end
