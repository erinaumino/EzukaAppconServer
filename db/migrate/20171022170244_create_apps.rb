class CreateApps < ActiveRecord::Migration[5.1]
  def change
    create_table :apps do |t|
      t.string :name
      t.string :square
      t.string :image0
      t.string :image1
      t.string :image2
      t.string :image3
      t.text :about
      t.text :feature

      t.timestamps
    end
  end
end
