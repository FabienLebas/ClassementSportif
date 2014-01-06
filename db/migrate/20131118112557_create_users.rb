class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :nom
      t.string :prenom
      t.string :nomdejoueur
      t.date :naissance
      t.string :pays
      t.string :ville

      t.timestamps
    end
  end
end
