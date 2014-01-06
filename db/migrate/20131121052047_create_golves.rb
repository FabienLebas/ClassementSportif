class CreateGolves < ActiveRecord::Migration
  def change
    create_table :golves do |t|
      t.string :email
      t.integer :classementactuel
      t.integer :meilleurclassement
      t.date :datemeilleurclassement
      t.float :points

      t.timestamps
    end
  end
end
