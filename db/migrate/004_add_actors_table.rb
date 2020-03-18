class AddActorsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :actors do |t|
      t.string , :network_id, :integer
  end
end
