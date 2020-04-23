class CreateVideoContents < ActiveRecord::Migration[6.0]
  def change
    create_table :video_contents do |t|
      t.string :type
      t.string :title
      t.text :plot

      t.timestamps
    end
  end
end
