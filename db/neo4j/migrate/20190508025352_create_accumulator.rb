class CreateAccumulator < Neo4j::Migrations::Base
  def up
    add_constraint :Accumulator, :uuid
  end

  def down
    drop_constraint :Accumulator, :uuid
  end
end
