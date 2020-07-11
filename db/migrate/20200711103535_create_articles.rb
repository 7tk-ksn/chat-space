class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :titile
      t.string :author
      t.text :text

      t.timestamps
    end
  end
end
