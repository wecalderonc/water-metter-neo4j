class Uplink
  include Neo4j::ActiveNode
  property :data, type: String
  property :avgsnr, type: String
  property :rssi, type: String
  property :long, type: String
  property :lat, type: String
  property :snr, type: String

  has_one :in, :uplinks_created, type: :UPLINK_CREATED, model_class: :Thing

  has_one :in, :Alarm, type: :BELONGS_TO
  has_one :in, :Accumulator, type: :BELONGS_TO
  has_one :in, :Sensor1, type: :BELONGS_TO
  has_one :in, :TimeUplink, type: :BELONGS_TO
  has_one :in, :UplinkBDownlink, type: :BELONGS_TO
  has_one :in, :ValvePosition, type: :BELONGS_TO
end
