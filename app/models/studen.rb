class Studen < ActiveRecord::Base
	validate :name,presence:true
	validate :age,presence:true,numericality:true
	validate :year,presence:true,numericality:true
end
