class AddUserToHives < ActiveRecord::Migration[5.0]
  def change
    add_reference :hives, :user, foreign_key: true
  end
end
