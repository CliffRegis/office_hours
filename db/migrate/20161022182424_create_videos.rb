class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.text :transcript

      t.timestamps
    end
  end
end
