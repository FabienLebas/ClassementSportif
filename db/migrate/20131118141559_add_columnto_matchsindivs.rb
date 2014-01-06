class AddColumntoMatchsindivs < ActiveRecord::Migration
  def change
    add_column :matchsindivs, :vainqueur, :string
  end
end
