class CreateUsers < ActiveRecord::Migration[5.1]
	def change
    	create_table :users do |t|
    		t.text :first_name
    		t.text :last_name
				t.text :phone

    		t.text :status, default: "safe"
				t.decimal :latitude, precision: 8, scale: 5, default: 0
	      t.decimal :longitude, precision: 8, scale: 5, default: 0


				t.integer :rapid_id

	  		t.timestamps
    	end
  	end
end
