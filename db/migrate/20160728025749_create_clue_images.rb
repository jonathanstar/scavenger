class CreateClueImages < ActiveRecord::Migration
  def change
    create_table :clue_images do |t|
      t.references :clue
      t.references :image
      t.timestamps null: false
    end
  end
end
