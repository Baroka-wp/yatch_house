class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :telephone
      t.string :email
      t.boolean :admin
      t.string :password_digest

      t.timestamps
    end
  end
end
