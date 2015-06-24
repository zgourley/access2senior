class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :category
      t.string :image

      t.timestamps null: false
    end
  end
end
