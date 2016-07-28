class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :hunt
      t.string :image_url
      t.timestamps null: false
    end
  end
end
