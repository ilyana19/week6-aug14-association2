class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :date
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end
  end
end
