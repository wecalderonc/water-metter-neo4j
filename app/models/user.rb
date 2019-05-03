class User
  include Neo4j::ActiveNode
  property :name, type: String
  property :email, type: String

  has_many :out, :things_created, type: :CREATED, model_class: :Thing

end
