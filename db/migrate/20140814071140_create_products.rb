class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      
      t.string :name
      t.string :brand
      t.string :category
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
