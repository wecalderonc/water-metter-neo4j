class Thing
  include Neo4j::ActiveNode
  property :name, type: String

  has_one :in, :creator, type: :CREATED, model_class: :User
  has_many :out, :uplinks_created, type: :UPLINK_CREATED, model_class: :Uplink

end
