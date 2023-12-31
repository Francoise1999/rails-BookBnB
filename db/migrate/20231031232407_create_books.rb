class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.string :category
      t.integer :year
      t.integer :price

      t.timestamps
    end
  end
end
