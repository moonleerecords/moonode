class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :city
      t.string :countryCode

      t.timestamps null: false
    end

    # TODO: add foreign key
  end
end
