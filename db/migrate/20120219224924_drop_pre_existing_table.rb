class DropPreExistingTable < ActiveRecord::Migration
  def up
    drop_table :states
  end

  def down
  end
end
