# db/migrate/create_rides.rb
class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.belongs_to :taxi, foreign_key: true
      t.belongs_to :passenger, foreign_key: true

      t.timestamps
    end
  end
end
