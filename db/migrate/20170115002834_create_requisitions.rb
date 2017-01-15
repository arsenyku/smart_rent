class CreateRequisitions < ActiveRecord::Migration[5.0]
  def change
    create_table :requisitions do |t|
      t.string :issue
      t.timestamps
    end
  end
end
