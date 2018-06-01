require 'test_helper'

class BotDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bot_detail = bot_details(:one)
  end

  test "should get index" do
    get bot_details_url, as: :json
    assert_response :success
  end

  test "should create bot_detail" do
    assert_difference('BotDetail.count') do
      post bot_details_url, params: { bot_detail: { ActualETA: @bot_detail.ActualETA, CreatedDateTime: @bot_detail.CreatedDateTime, CurrentLat: @bot_detail.CurrentLat, CurrentLatLon: @bot_detail.CurrentLatLon, CurrentLon: @bot_detail.CurrentLon, DataInsertedTime: @bot_detail.DataInsertedTime, DataPingTime: @bot_detail.DataPingTime, Delay: @bot_detail.Delay, DestAddress: @bot_detail.DestAddress, DestLat: @bot_detail.DestLat, DestLatLon: @bot_detail.DestLatLon, DestLon: @bot_detail.DestLon, Destination: @bot_detail.Destination, DisMins: @bot_detail.DisMins, DisText: @bot_detail.DisText, DisValue: @bot_detail.DisValue, DurText: @bot_detail.DurText, DurValue: @bot_detail.DurValue, FlagValue: @bot_detail.FlagValue, GpsProvider: @bot_detail.GpsProvider, LoadingMins: @bot_detail.LoadingMins, MaterialOutTime: @bot_detail.MaterialOutTime, NightDrivingFlag: @bot_detail.NightDrivingFlag, OnTime: @bot_detail.OnTime, OrgLat: @bot_detail.OrgLat, OrgLon: @bot_detail.OrgLon, Origin: @bot_detail.Origin, OriginAddress: @bot_detail.OriginAddress, PlannedETA: @bot_detail.PlannedETA, RouteCode: @bot_detail.RouteCode, RouteDeviationFlag: @bot_detail.RouteDeviationFlag, RouteId: @bot_detail.RouteId, ScheduleId: @bot_detail.ScheduleId, ServiceProvideCode: @bot_detail.ServiceProvideCode, ServiceProvideName: @bot_detail.ServiceProvideName, Speed: @bot_detail.Speed, TransitTime: @bot_detail.TransitTime, VCV_NO: @bot_detail.VCV_NO, VehicleHaltFlag: @bot_detail.VehicleHaltFlag, VehicleHaltMinutes: @bot_detail.VehicleHaltMinutes, VehicleNo: @bot_detail.VehicleNo } }, as: :json
    end

    assert_response 201
  end

  test "should show bot_detail" do
    get bot_detail_url(@bot_detail), as: :json
    assert_response :success
  end

  test "should update bot_detail" do
    patch bot_detail_url(@bot_detail), params: { bot_detail: { ActualETA: @bot_detail.ActualETA, CreatedDateTime: @bot_detail.CreatedDateTime, CurrentLat: @bot_detail.CurrentLat, CurrentLatLon: @bot_detail.CurrentLatLon, CurrentLon: @bot_detail.CurrentLon, DataInsertedTime: @bot_detail.DataInsertedTime, DataPingTime: @bot_detail.DataPingTime, Delay: @bot_detail.Delay, DestAddress: @bot_detail.DestAddress, DestLat: @bot_detail.DestLat, DestLatLon: @bot_detail.DestLatLon, DestLon: @bot_detail.DestLon, Destination: @bot_detail.Destination, DisMins: @bot_detail.DisMins, DisText: @bot_detail.DisText, DisValue: @bot_detail.DisValue, DurText: @bot_detail.DurText, DurValue: @bot_detail.DurValue, FlagValue: @bot_detail.FlagValue, GpsProvider: @bot_detail.GpsProvider, LoadingMins: @bot_detail.LoadingMins, MaterialOutTime: @bot_detail.MaterialOutTime, NightDrivingFlag: @bot_detail.NightDrivingFlag, OnTime: @bot_detail.OnTime, OrgLat: @bot_detail.OrgLat, OrgLon: @bot_detail.OrgLon, Origin: @bot_detail.Origin, OriginAddress: @bot_detail.OriginAddress, PlannedETA: @bot_detail.PlannedETA, RouteCode: @bot_detail.RouteCode, RouteDeviationFlag: @bot_detail.RouteDeviationFlag, RouteId: @bot_detail.RouteId, ScheduleId: @bot_detail.ScheduleId, ServiceProvideCode: @bot_detail.ServiceProvideCode, ServiceProvideName: @bot_detail.ServiceProvideName, Speed: @bot_detail.Speed, TransitTime: @bot_detail.TransitTime, VCV_NO: @bot_detail.VCV_NO, VehicleHaltFlag: @bot_detail.VehicleHaltFlag, VehicleHaltMinutes: @bot_detail.VehicleHaltMinutes, VehicleNo: @bot_detail.VehicleNo } }, as: :json
    assert_response 200
  end

  test "should destroy bot_detail" do
    assert_difference('BotDetail.count', -1) do
      delete bot_detail_url(@bot_detail), as: :json
    end

    assert_response 204
  end
end
