class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :phone_number

      t.timestamps
    end
  end
end

