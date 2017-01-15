class RemoveFromProperties <
 ActiveRecord::Migration[5.0]
  def change
    add_column :contracts, :duration_of_lease, :integer
    remove_column :properties, :duration_of_lease, :integer
  end
end
