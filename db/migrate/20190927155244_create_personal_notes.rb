class CreatePersonalNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :personal_notes do |t|
      t.string :episode
      t.string :rating
      t.string :explanation
      t.integer :podcast_id

      t.timestamps
    end
  end
end
