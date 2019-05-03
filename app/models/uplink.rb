class Uplink
  include Neo4j::ActiveNode
  property :data, type: String
  property :avgsnr, type: String
  property :rssi, type: String
  property :long, type: String
  property :lat, type: String
  property :snr, type: String


  has_one :in, :uplinks_created, type: :UPLINK_CREATED, model_class: :Thing

end
