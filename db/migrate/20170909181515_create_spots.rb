class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.string :state, null: false
      t.string :city, null: false
      t.point :lonlat, geographic: true, null: false

      t.timestamps
    end
  end
end
