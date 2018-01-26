class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :sport
      t.datetime :datetime
      t.string :location
      t.string :coordinates
      t.string :description
      t.integer :capacity
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
