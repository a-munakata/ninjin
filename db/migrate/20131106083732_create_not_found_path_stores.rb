class CreateNotFoundPathStores < ActiveRecord::Migration
  def change
    create_table :not_found_path_stores do |t|

      t.timestamps
    end
  end
end
