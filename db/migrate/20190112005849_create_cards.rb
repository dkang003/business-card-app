class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :title
      t.string :website
      t.string :phone
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :insta
      t.string :github
      t.string :company
      t.string :logo
      t.string :image

      t.timestamps
    end
  end
end
