class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.column :restaurants, :string
      t.column :shops, :string
    end
  end
end

