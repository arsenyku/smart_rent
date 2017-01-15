class CreateTerminations < ActiveRecord::Migration[5.0]
  def change
    create_table :terminations do |t|

      t.timestamps
    end
  end
end
