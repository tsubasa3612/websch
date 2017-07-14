class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :price
      t.text :outline
      t.string :evaluation

      t.timestamps
    end
  end
end
