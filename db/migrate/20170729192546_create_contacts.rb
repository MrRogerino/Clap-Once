class CreateContacts < ActiveRecord::Migration[5.1]
	def change
    	create_table :contacts do |t|
            t.text :first_name
            t.text :last_name
    		t.text :phone
    		t.integer :user_id
    		t.integer :follower_id
    		t.integer :following_id	

     		t.timestamps
    	end
  	end
end
