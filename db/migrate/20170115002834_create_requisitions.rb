class CreateRequisitions < ActiveRecord::Migration[5.0]
  def change
    create_table :requisitions do |t|
      t.string :issue
      t.integer :response_time
      t.boolean :resolved
      t.references :landlord, :tenant, :contract, :property
      t.timestamps
    end

    add_column :properties, :duration_of_lease, :integer
  end
end
