class FixColumnName < ActiveRecord::Migration[5.0]
  	def self.up
  		change_table :reservations do |t|
    		t.change :time, :time 
  		end
  	end

	def self.down
  		change_table :reservations do |t|
    		t.change :time, :string 
  		end
	end
end

