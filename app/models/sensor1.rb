class Sensor1
  include Neo4j::ActiveNode
  property :value, type: String

    has_one :out, :uplink, type: :BELONGS_TO



end
