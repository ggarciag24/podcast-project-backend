class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :image
      t.string :description
      t.integer :topic_id

      t.timestamps
    end
  end
end
