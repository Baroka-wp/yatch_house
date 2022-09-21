class Removecol1 < ActiveRecord::Migration[7.0]
  def change
    remove_column :users , :password_digest
  end
end
