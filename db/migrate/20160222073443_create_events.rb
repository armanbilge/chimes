class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :datetime
      t.references :event_type, index: true, foreign_key: true
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
