class CreateExternalLinks < ActiveRecord::Migration
  def change
    create_table :external_links do |t|
      t.string :type
      t.string :url
      t.references :linkable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
