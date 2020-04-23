class CreateVideoContentPurchaseOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :video_content_purchase_options do |t|
      t.belongs_to :video_content, null: false
      t.belongs_to :purchase_option, null: false

      t.timestamps
    end
  end
end
