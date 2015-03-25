class CreateLabels < ActiveRecord::Migration
  def change
    create_table :labels do |t|
      t.references :user, index: true
      t.string :name
      t.string :country
      t.string :city
      t.integer :founded
      t.string :website
      t.integer :artists_count

      t.timestamps null: false
    end
    add_foreign_key :labels, :users
  end
end
