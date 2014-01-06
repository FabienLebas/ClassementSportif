class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :classementactuel, :integer
    add_column :users, :meilleurclassement, :integer
    add_column :users, :datemeilleurclassement, :date
  end
end
