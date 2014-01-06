class CreateMessports < ActiveRecord::Migration
  def change
    create_table :messports do |t|
      t.string :email
      t.string :sport

      t.timestamps
    end
  end
end
