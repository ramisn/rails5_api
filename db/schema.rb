# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180531114036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "API", id: false, force: :cascade do |t|
    t.string "FName", limit: 255
    t.string "LName", limit: 255
    t.string "Email", limit: 255
  end

  create_table "bot_details", force: :cascade do |t|
    t.string "GpsProvider"
    t.string "RouteId"
    t.string "VCV_NO"
    t.string "MaterialOutTime"
    t.string "VehicleNo"
    t.string "RouteCode"
    t.string "Origin"
    t.string "Destination"
    t.string "CurrentLatLon"
    t.string "DestLatLon"
    t.string "DataPingTime"
    t.string "TransitTime"
    t.string "PlannedETA"
    t.string "OriginAddress"
    t.string "DestAddress"
    t.string "DurValue"
    t.string "DurText"
    t.string "DisValue"
    t.string "DisText"
    t.string "LoadingMins"
    t.string "DisMins"
    t.string "ActualETA"
    t.string "DataInsertedTime"
    t.string "FlagValue"
    t.string "OrgLat"
    t.string "OrgLon"
    t.string "CurrentLat"
    t.string "CurrentLon"
    t.string "DestLat"
    t.string "DestLon"
    t.string "VehicleHaltFlag"
    t.string "RouteDeviationFlag"
    t.string "VehicleHaltMinutes"
    t.string "ScheduleId"
    t.string "OnTime"
    t.string "Delay"
    t.string "Speed"
    t.string "NightDrivingFlag"
    t.string "CreatedDateTime"
    t.string "ServiceProvideCode"
    t.string "ServiceProvideName"
    t.date "created_at", null: false
    t.date "updated_at", null: false
  end

  create_table "tvslsl", id: false, force: :cascade do |t|
    t.string "gpsprovider", limit: 250
    t.string "route_id", limit: 250
    t.string "vcv_no", limit: 250
    t.string "material_out_datetime", limit: 250
    t.string "vehicle_no", limit: 250
    t.string "routecode", limit: 250
    t.string "originlocation", limit: 250
    t.string "destinationlocation", limit: 250
    t.string "curr_lat_lon", limit: 250
    t.string "des_lat_lon", limit: 250
    t.string "data_ping_time", limit: 250
    t.string "transit_time", limit: 250
    t.string "planned_eta", limit: 250
    t.string "origin_addr", limit: 250
    t.string "dest_addr", limit: 250
    t.string "dur_value", limit: 250
    t.string "dur_text", limit: 250
    t.string "dis_value", limit: 250
    t.string "dis_text", limit: 250
    t.string "loading_mins", limit: 250
    t.string "dis_mins", limit: 250
    t.string "actual_eta", limit: 250
    t.string "data_inserted_time", limit: 250
    t.string "flags", limit: 250
    t.string "org_lat", limit: 250
    t.string "org_lon", limit: 250
    t.string "curr_lat", limit: 250
    t.string "curr_lon", limit: 250
    t.string "des_lat", limit: 250
    t.string "des_lon", limit: 250
    t.string "vehicle_halt_flag", limit: 250
    t.string "route_deviation_flag", limit: 250
    t.string "vehicle_halt_minutes", limit: 250
    t.string "scheduleid", limit: 250
    t.string "ontime", limit: 250
    t.string "delay", limit: 250
    t.string "speed", limit: 250
    t.string "night_driving_flag", limit: 250
    t.string "created_date_time", limit: 250
    t.string "sp_code", limit: 250
    t.string "sp_name", limit: 250
  end

end
