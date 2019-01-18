class Assoc < ActiveRecord::Migration[5.2]
  def change
    create_join_table :cards, :users
  end
end
