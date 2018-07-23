class CreateBookmarks < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :host
      t.string :url
      t.integer :category_id

      t.timestamps
    end
  end
end
