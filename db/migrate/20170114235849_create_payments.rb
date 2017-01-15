class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :total
      t.datetime :due_date
      t.timestamps

      t.references :landlord, :tenant, :contract, :property, index: true, foreign_key: true

    end
  end
end
