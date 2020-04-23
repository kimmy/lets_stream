class CreateEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :episodes do |t|
      t.string :title, null: false
      t.text :plot, null: false
      t.integer :number, null: false

      t.timestamps
    end
  end
end
