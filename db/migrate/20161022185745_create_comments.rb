class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :video, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.text :content

      t.timestamps  
    end
  end
end
