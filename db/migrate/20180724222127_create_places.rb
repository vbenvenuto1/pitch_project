class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :ip
      t.string :street
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
    add_index :places, [:latitude, :longitude]
  end
end
