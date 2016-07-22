class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.string :item
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
