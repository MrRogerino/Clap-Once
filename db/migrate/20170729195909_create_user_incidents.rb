class CreateUserIncidents < ActiveRecord::Migration[5.1]
	def change
    	create_table :user_incidents do |t|
    		t.integer :user_id
    		t.integer :incident_id
      		t.timestamps
    	end
  	end
end
