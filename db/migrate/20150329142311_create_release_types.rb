class CreateReleaseTypes < ActiveRecord::Migration
  def change
    create_table :release_types do |t|
      t.references :release, index: true
      t.string :buyUrl
      t.string :format

      t.timestamps null: false
    end
    add_foreign_key :release_types, :releases
  end
end
