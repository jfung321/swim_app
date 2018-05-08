class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :stroke
      t.integer :distance
      t.float :ccs_time

      t.timestamps
    end
  end
end
