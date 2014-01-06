class AddPointstoUsers < ActiveRecord::Migration
  def change
    add_column :users, :points, :float
  end

end
