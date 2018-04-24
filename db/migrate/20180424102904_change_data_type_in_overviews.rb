class ChangeDataTypeInOverviews < ActiveRecord::Migration[5.1]
  def change
    change_column :overviews, :description, :text
  end
end
