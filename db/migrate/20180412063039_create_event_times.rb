class CreateEventTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :event_times do |t|
      t.float :time
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
