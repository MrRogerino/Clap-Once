class CreateIncidents < ActiveRecord::Migration[5.1]
	def change
    	create_table :incidents do |t|
    		t.text :name
    		t.text :description
    		t.text :location
    		t.integer :severity

      		t.timestamps
    	end
  	end
end
