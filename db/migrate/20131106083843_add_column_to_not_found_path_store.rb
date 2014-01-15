class AddColumnToNotFoundPathStore < ActiveRecord::Migration
  def change
    add_column :not_found_path_stores, :occurred_at, :datetime
    add_column :not_found_path_stores, :path, :string
    add_column :not_found_path_stores, :ip_address, :string
    add_column :not_found_path_stores, :entry, :string
  end
end
