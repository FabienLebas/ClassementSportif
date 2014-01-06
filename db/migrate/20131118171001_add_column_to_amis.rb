class AddColumnToAmis < ActiveRecord::Migration
  def change
    add_column :amis, :sport, :string
  end
end
