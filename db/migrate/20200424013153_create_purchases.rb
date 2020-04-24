class CreatePurchases < ActiveRecord::Migration[6.0]
  VALIDITY = 2.days

  def change
    create_table :purchases do |t|
      t.belongs_to :user, null: false
      t.belongs_to :video_content_purchase_option, null: false
      t.datetime :expires_at, null: false, default: DateTime.now + VALIDITY

      t.timestamps
    end
  end
end
