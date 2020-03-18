class AddActorsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :actors , :network_id, :integer
  end
end
