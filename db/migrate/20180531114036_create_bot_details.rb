class CreateBotDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :bot_details do |t|
      t.string :gps_provider
      t.string :RouteId
      t.string :vcv_no
      t.string :MaterialOutTime
      t.string :VehicleNo
      t.string :RouteCode
      t.string :Origin
      t.string :Destination
      t.string :CurrentLatLon
      t.string :DestLatLon
      t.string :DataPingTime
      t.string :TransitTime
      t.string :PlannedETA
      t.string :OriginAddress
      t.string :DestAddress
      t.string :DurValue
      t.string :DurText
      t.string :DisValue
      t.string :DisText
      t.string :LoadingMins
      t.string :DisMins
      t.string :ActualETA
      t.string :DataInsertedTime
      t.string :FlagValue
      t.string :OrgLat
      t.string :OrgLon
      t.string :CurrentLat
      t.string :CurrentLon
      t.string :DestLat
      t.string :DestLon
      t.string :VehicleHaltFlag
      t.string :RouteDeviationFlag
      t.string :VehicleHaltMinutes
      t.string :ScheduleId
      t.string :OnTime
      t.string :Delay
      t.string :Speed
      t.string :NightDrivingFlag
      t.string :CreatedDateTime
      t.string :ServiceProvideCode
      t.string :service_provider_name

      t.timestamps
    end
  end
end
