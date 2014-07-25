class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :series
      t.string :isbn
      t.string :illustrator
      t.string :genre

      t.timestamps
    end
  end
end
