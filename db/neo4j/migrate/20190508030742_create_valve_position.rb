class CreateValvePosition < Neo4j::Migrations::Base
  def up
    add_constraint :ValvePosition, :uuid
  end

  def down
    drop_constraint :ValvePosition, :uuid
  end
end
