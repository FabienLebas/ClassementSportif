class CreateTennis < ActiveRecord::Migration
  def change
    create_table :tennis do |t|
      t.string :email
      t.integer :classementactuel
      t.integer :meilleurclassement
      t.date :datemeilleurclassement

      t.timestamps
    end
  end
end
