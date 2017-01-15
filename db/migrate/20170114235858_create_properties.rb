class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.timestamps
      t.references :landlord, index: true, foreign_key: true

    end
  end
end
