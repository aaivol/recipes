class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :author
      t.string :time
      t.string :ingr
      t.string :way
      t.string :picname

      t.timestamps
    end
  end
end
