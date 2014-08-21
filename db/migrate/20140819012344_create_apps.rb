class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :title
      t.text :description
      t.text :category
      t.text :imagelink
      t.text :imagelink2
      t.text :imagelink3
      t.text :imagelink4
      t.text :imagelink5
      t.text :applicationlink
      t.text :applicationlink2


      t.timestamps
    end
  end
end
