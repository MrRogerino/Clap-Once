class CreateUsers < ActiveRecord::Migration[5.1]
	def change
    	create_table :users do |t|
    		t.text :first_name
    		t.text :last_name
				t.text :phone
    		t.text :location
				t.integer :rapid_id

	  		t.timestamps
    	end
  	end
end
