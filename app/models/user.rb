class User < ActiveRecord::Base
  attr_accessible :email, :naissance, :nom, :nomdejoueur, :pays, :prenom, :ville, :points
  validates_presence_of :email
end
