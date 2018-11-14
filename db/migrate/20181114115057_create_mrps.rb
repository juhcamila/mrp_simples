class CreateMrps < ActiveRecord::Migration[5.2]
  def change
    create_table :mrps do |t|
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.string :a5
      t.string :a6
      t.string :a7
      t.string :a8
      t.string :a9
      t.string :a10
      t.string :a11
      t.string :b1
      t.string :b2
      t.string :b3
      t.string :b4
      t.string :b5
      t.string :b6
      t.string :b7
      t.string :b8
      t.string :b9
      t.string :b10
      t.string :b11
      t.integer :c2
      t.integer :c3
      t.integer :est
      t.integer :lt

      t.timestamps
    end
  end
end
