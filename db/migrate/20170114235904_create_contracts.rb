class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.datetime
      t.references :landlord, :tenant, :property, index: true, foreign_key: true
      t.timestamps
    end
  end
end
