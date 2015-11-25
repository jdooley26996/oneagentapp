class User < ActiveRecord::Base
	include Gravtastic   
  gravtastic 
	has_many :expenses
	has_many :open_houses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
     
end
