class AddBooksToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :Users, :books, foreign_key: true
  end
end
