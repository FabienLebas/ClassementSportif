class AddColumntoTennis < ActiveRecord::Migration
  def change
    add_column :tennis, :points, :float
  end
end
