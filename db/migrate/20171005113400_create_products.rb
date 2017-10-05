class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :order, foreign_key: true
      t.string :animal
      t.string :part
      t.decimal :price
      t.string :description

      t.timestamps
    end
  end
end
