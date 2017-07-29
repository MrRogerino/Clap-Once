class CreateIncidents < ActiveRecord::Migration[5.1]
	def change
    	create_table :incidents do |t|
    		t.text :type
    		t.text :description
    		t.text :location

      		t.timestamps
    	end
  	end
end
