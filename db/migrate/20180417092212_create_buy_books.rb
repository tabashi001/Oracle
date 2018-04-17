class CreateBuyBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :buy_books do |t|
      t.string :name
      t.string :email
      t.string :phone_no
      t.text :description
      t.integer :book_id
      t.integer :user_id
      t.string :user_role

      t.timestamps
    end
  end
end
