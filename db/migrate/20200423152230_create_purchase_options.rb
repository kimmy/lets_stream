class CreatePurchaseOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_options do |t|
      t.float :price, null: false
      t.string :quality, null: false

      t.timestamps
    end
  end
end
