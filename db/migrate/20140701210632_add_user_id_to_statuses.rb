class AddUserIdToStatuses < ActiveRecord::Migration
  def change
#7/1/2014, AOD created by typing: rails generate migration "fdskjfhsdjkfhd"

  	#add a column to the statuses table for user_id (an integer)
  	add_column :statuses, :user_id, :integer 
  	#because we'll also want to be able to find users by status, we'll add an index
  	add_index :statuses, :user_id
  	#won't need the name field on statuses anymore, so we'll remove that now (remember, it was a write-in, make up whatever you want, field) 
  	remove_column :statuses, :name

  	#to put these changes in effect, will need to type: 
  		#rake db:migrate

  end
end
