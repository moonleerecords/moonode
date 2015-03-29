class CreateReleaseReviews < ActiveRecord::Migration
  def change
    create_table :release_reviews do |t|
      t.references :release, index: true
      t.string :title
      t.string :url
      t.text :quotes
      t.boolean :visible

      t.timestamps null: false
    end
    add_foreign_key :release_reviews, :releases
  end
end
