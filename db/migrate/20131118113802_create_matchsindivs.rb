class CreateMatchsindivs < ActiveRecord::Migration
  def change
    create_table :matchsindivs do |t|
      t.string :email1
      t.string :email2
      t.string :sport

      t.timestamps
    end
  end
end
