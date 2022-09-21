class Renamecolumn1 < ActiveRecord::Migration[7.0]
  def change
    rename_column :houses, :descritpion, :description
  end
end
