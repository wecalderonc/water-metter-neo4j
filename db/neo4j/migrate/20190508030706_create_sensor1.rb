class CreateSensor1 < Neo4j::Migrations::Base
  def up
    add_constraint :Sensor1, :uuid
  end

  def down
    drop_constraint :Sensor1, :uuid
  end
end
