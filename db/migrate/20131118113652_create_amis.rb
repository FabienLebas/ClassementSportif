class CreateAmis < ActiveRecord::Migration
  def change
    create_table :amis do |t|
      t.string :email1
      t.string :email2

      t.timestamps
    end
  end
end
